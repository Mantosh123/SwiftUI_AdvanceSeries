//
//  ContentView.swift
//  EnvironmentObjectSample
//
//  Created by Mantosh Kumar on 24/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            ///networkManager.updateNetworkCall()
            Text(networkManager.name ?? "s/s")
            
            Button("go next") {
                
            }
        }
        .onAppear(
            
        )
        .padding()
    }
}

#Preview {
    ContentView()
}
