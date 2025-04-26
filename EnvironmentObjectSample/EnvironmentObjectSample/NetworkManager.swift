//
//  NetworkManager.swift
//  EnvironmentObjectSample
//
//  Created by Mantosh Kumar on 24/04/25.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var name: String? = ""
    @Published var type: String? = ""
    
    func updateNetworkCall() {
        name = "Mantosh iPhone8"
    }
}
