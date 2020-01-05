//
//  ContentView.swift
//  respringmyi
//
//  Created by Conor Byrne on 05/01/2020.
//  Copyright © 2020 Conor Byrne. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("./respringmyi").font(.custom("Courier-Bold", size: 18)).padding(.bottom, 15)
            Text("Open Application on Apple Watch to begin").font(.custom("Courier", size: 14)).multilineTextAlignment(.center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
