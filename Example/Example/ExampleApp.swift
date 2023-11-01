//
//  ExampleApp.swift
//  Example
//
//  Created by Long Pham on 01/11/2023.
//

import SwiftUI
import self_ios_sdk
import SwiftyBeaver

let log = SwiftyBeaver.self

@main
struct ExampleApp: App {
    
    init () {
        SelfSDK.initialize()
        log.debug("Hello")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
