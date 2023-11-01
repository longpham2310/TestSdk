//
//  ContentView.swift
//  Example
//
//  Created by Long Pham on 01/11/2023.
//

import SwiftUI
import TestSdk
import self_ios_sdk

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
    
    func foo() {
        MyTestSdk.sayHello()
        
        SelfSDK.initialize()
    }
}

#Preview {
    ContentView()
}
