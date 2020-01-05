//
//  HostingController.swift
//  watchapp Extension
//
//  Created by Conor Byrne on 05/01/2020.
//  Copyright © 2020 Conor Byrne. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI
import WatchConnectivity

class HostingController: WKHostingController<ContentView>, WCSessionDelegate {
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
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
