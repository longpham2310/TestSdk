//
//  ExampleApp.swift
//  Example
//
//  Created by Long Pham on 01/11/2023.
//

import SwiftUI
import TestSdk

@main
struct ExampleApp: App {
    
    init () {
//        SelfSDK.initialize()
        MyTestSdk.sayHello()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
