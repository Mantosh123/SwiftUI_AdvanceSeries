//
//  SecondView.swift
//  EnvironmentObjectSample
//
//  Created by Mantosh Kumar on 27/04/25.
//

import SwiftUI

struct SecondScreen: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                Text(networkManager.name ?? "No data")
                Text("Count in second View: \(networkManager.count)")
                NavigationLink(" Go to third Screen", destination: ThirdScreen())

            }.navigationTitle("Second Screen")
        }
        
    }
}

