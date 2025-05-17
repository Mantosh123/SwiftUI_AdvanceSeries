//
//  NetworkManager.swift
//  EnvironmentObjectSample
//
//  Created by Mantosh Kumar on 24/04/25.
//

import Foundation
import SwiftUI
import Combine

class NetworkManager: ObservableObject {
    
    @Published var name: String? = "Mantosh Kumar"
    @Published var type: String? = ""
    
    @Published var count: Int = 0
    @Published var timerCancellable: AnyCancellable?
    @State private var timer: Timer?

    init() {
        updateNetworkCall()
    }
    
    func updateNetworkCall() {
        type = "iPhone8"
        startTimer()
        count = 0
    }
    
//    func startTimer() {
//        // Prevent multiple timers
//        if timerCancellable != nil { return }
//        
//        
//        
//        print("started count..")
//        
//        timerCancellable = Timer
//            .publish(every: 5.0, on: .main, in: .common)
//            .autoconnect()
//            .sink { _ in
//                self.count += 1
//                self.type = "iPhone:\(self.count)"
//                
//                if self.count == 100 {
//                    self.stopTimer()
//                }
//            }
//    }
    
    func startTimer() {
            // Avoid creating multiple timers
            if timer != nil { return }

            timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { _ in
                self.count += 1
                
                if self.count == 100 {
                    self.stopTimer()
                }
            }
        }
    
    func stopTimer() {
        timerCancellable?.cancel()
        timerCancellable = nil
    }
}
