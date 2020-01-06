//
//  ContentView.swift
//  watchapp Extension
//
//  Created by Conor Byrne on 05/01/2020.
//  Copyright © 2020 Conor Byrne. All rights reserved.
//

import SwiftUI
import WatchConnectivity
import WatchKit

struct ContentView: View {
    @State private var showingRespringAlert = false
    @State private var showingSafemodeAlert = false
    @State private var showingUICacheAlert = false
    @State private var showingLockAlert = false

    let respringMessage = ["respring": true, "safemode": false, "uicache": false]
    let safemodeMessage = ["respring": false, "safemode": true, "uicache": false]
    let uicacheMessage = ["respring": false, "safemode": false, "uicache": true]
    let lockMessage = ["respring": false, "safemode": false, "uicache": false, "lock": true]

    var wcSession: WCSession! = WCSession.default

    var body: some View {
        VStack {
            Text("./respringmyi").font(.custom("Courier-Bold", size: 18)).padding(.bottom, 15)
            Text("respring your idevice").font(.custom("Courier", size: 14)).multilineTextAlignment(.center)

            VStack {
                HStack {
                    Button(action: {
                        self.wcSession.activate()

                        self.wcSession.sendMessage(self.respringMessage, replyHandler: nil) { error in
                            print(error.localizedDescription)
                        }

                        self.showingRespringAlert = true
                    })
                    {
                        Text("Respring").font(.custom("Courier", size: 10))

                    }.alert(isPresented: $showingRespringAlert)
                    {
                        Alert(title: Text("success :)"), message: Text("the idevice successfuly resprang!"), dismissButton: .default(Text("okay")))
                    }

                    Button(action: {
                        self.wcSession.activate()

                        self.wcSession.sendMessage(self.safemodeMessage, replyHandler: nil) { error in
                            print(error.localizedDescription)
                        }

                        self.showingSafemodeAlert = true
                    })
                    {
                        Text("Safemode").font(.custom("Courier", size: 10))

                    }.alert(isPresented: $showingSafemodeAlert)
                    {
                        Alert(title: Text("success :)"), message: Text("the idevice successfuly went into safemode!"), dismissButton: .default(Text("okay")))
                    }
                }
                
                HStack {
                    Button(action: {
                        self.wcSession.activate()

                        self.wcSession.sendMessage(self.uicacheMessage, replyHandler: nil) { error in
                            print(error.localizedDescription)
                        }

                        self.showingUICacheAlert = true
                    })
                    {
                        Text("UICache").font(.custom("Courier", size: 10))

                    }.alert(isPresented: $showingUICacheAlert)
                    {
                        Alert(title: Text("success :)"), message: Text("the idevice successfuly ran uicache --all!"), dismissButton: .default(Text("okay")))
                    }

                    Button(action: {
                        self.wcSession.activate()

                        self.wcSession.sendMessage(self.lockMessage, replyHandler: nil) { error in
                            print(error.localizedDescription)
                        }

                        self.showingLockAlert = true
                    })
                    {
                        Text("Lock iDevice").font(.custom("Courier", size: 10))

                    }.alert(isPresented: $showingLockAlert)
                    {
                        Alert(title: Text("success :)"), message: Text("the idevice successfuly locked!"), dismissButton: .default(Text("okay")))
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
