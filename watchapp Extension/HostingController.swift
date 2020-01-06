//
//  HostingController.swift
//  watchapp Extension
//
//  Created by Conor Byrne on 05/01/2020.
//  Copyright © 2020 Conor Byrne. All rights reserved.
//

import Foundation
import SwiftUI
import WatchConnectivity
import WatchKit

class HostingController: WKHostingController<ContentView>, WCSessionDelegate {
    func session(_: WCSession, activationDidCompleteWith _: WCSessionActivationState, error _: Error?) {}

    override init() {
        super.init()

        if WCSession.isSupported() {
             print("WCSession supported")
             let session = WCSession.default
             session.delegate = self
             session.activate()
         }
    }

    override var body: ContentView {
        return ContentView()
    }
}
