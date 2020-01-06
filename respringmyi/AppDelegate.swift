//
//  AppDelegate.swift
//  respringmyi
//
//  Created by Conor Byrne on 05/01/2020.
//  Copyright © 2020 Conor Byrne. All rights reserved.
//

import UIKit
import WatchConnectivity

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, WCSessionDelegate {
    var lastMessage: CFAbsoluteTime = 0

    func session(_: WCSession, activationDidCompleteWith _: WCSessionActivationState, error _: Error?) {}

    func sessionDidBecomeInactive(_: WCSession) {}

    func sessionDidDeactivate(_: WCSession) {}

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
        return true
    }

    func session(_: WCSession, didReceiveMessage message: [String: Any]) {
        let shouldRespring = message["respring"] as! Bool
        let shouldSafemode = message["safemode"] as! Bool
        let shouldUICache = message["uicache"] as! Bool
        let shouldLockDevice = message["lock"] as! Bool

        if shouldRespring {
            DarwinNotifications().sendRespring()
        }
        
        if shouldSafemode {
            DarwinNotifications().sendSafemode()
        }
        
        if shouldUICache {
            DarwinNotifications().sendUICache()
        }
        
        if shouldLockDevice {
            DarwinNotifications().sendLockDevice()
        }
    }

    // MARK: UISceneSession Lifecycle

    func application(_: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options _: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_: UIApplication, didDiscardSceneSessions _: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
