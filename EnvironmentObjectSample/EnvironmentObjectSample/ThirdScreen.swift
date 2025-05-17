//
//  ThirdScreen.swift
//  EnvironmentObjectSample
//
//  Created by Mantosh Kumar on 27/04/25.
//

import SwiftUI

struct ThirdScreen: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(networkManager.name ?? "No data")
                Text("Count in View: \(networkManager.count)")
            }
        }.navigationTitle("Third Screen")
    }
}

