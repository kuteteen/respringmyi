//
//  ContentView.swift
//  watchapp Extension
//
//  Created by Conor Byrne on 05/01/2020.
//  Copyright © 2020 Conor Byrne. All rights reserved.
//

import SwiftUI
import WatchKit
import WatchConnectivity

struct ContentView: View {
    @State private var showingAlert = false

    let message = ["respring":true]
    var wcSession : WCSession! = WCSession.default
    
    var body: some View {
        VStack {
            Text("./respringmyi").font(.custom("Courier-Bold", size: 18)).padding(.bottom, 15)
            Text("respring your idevice").font(.custom("Courier", size: 14)).multilineTextAlignment(.center)
            
            Button(action: {
                self.wcSession.activate()
                
                self.wcSession.sendMessage(self.message, replyHandler: nil) { (error) in
                    print(error.localizedDescription)
                }
                
                self.showingAlert = true
            })
            {
                Text("killall -9 SpringBoard").font(.custom("Courier", size: 10))
                
            }.alert(isPresented: $showingAlert)
            {
                Alert(title: Text("success! :)"), message: Text("the idevice successfuly resprang!"), dismissButton: .default(Text("okay!")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
