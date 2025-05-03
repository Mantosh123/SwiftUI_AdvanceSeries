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
        Text("Second Screen")
        Text(networkManager.name ?? "No data") // Came from 1st screen 
        
        NavigationLink("Third Screen", destination: ThirdScreen())
    }
}

