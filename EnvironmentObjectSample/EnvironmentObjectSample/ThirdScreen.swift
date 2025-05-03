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
        Text("Second Screen")
        
        VStack {
            HStack {
                Text("Netrork Name: ").font(.title)
                Text(networkManager.name ?? "No data") // Came from 1st to 3rd screen
            }
            
            HStack {
                Text("Phone Type: ").font(.title)
                Text(networkManager.type ?? "No Type") // Came from 1st to 3rd screen 
            }
        }
    }
}

