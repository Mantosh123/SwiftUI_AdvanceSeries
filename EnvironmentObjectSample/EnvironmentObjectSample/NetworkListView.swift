//
//  NetworkListView.swift
//  EnvironmentObjectSample
//
//  Created by Mantosh Kumar on 25/04/25.
//

import SwiftUI

struct NetworkListView: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Text(networkManager.name ?? "N/A")
    }
}

#Preview {
    NetworkListView()
}
