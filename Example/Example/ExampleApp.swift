//
//  ExampleApp.swift
//  Example
//
//  Created by Long Pham on 01/11/2023.
//

import SwiftUI
import self_ios_sdk

@main
struct ExampleApp: App {
    
    init () {
        SelfSDK.initialize()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
