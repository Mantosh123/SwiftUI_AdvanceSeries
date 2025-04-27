//
//  NetworkManager.swift
//  EnvironmentObjectSample
//
//  Created by Mantosh Kumar on 24/04/25.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var name: String? = "Mantosh Kumar"
    @Published var type: String? = ""
    
    init() {
        updateNetworkCall()
    }
    
    func updateNetworkCall() {
        type = "iPhone8"
    }
}
