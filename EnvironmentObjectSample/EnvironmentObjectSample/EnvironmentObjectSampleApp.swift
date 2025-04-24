//
//  EnvironmentObjectSampleApp.swift
//  EnvironmentObjectSample
//
//  Created by Mantosh Kumar on 24/04/25.
//

import SwiftUI

@main
struct EnvironmentObjectSampleApp: App {
    
    @StateObject var networkManager = NetworkManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(networkManager)
        }
    }
}
