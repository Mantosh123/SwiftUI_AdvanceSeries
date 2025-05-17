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
        
        NavigationStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text(networkManager.name ?? "s/s")
                Text("Count in View: \(networkManager.count)")

                NavigationLink("Go to Second View") {
                    SecondScreen()
                }
                
                Button("Start value count") {
                    networkManager.startTimer()
                }
            }
            .navigationTitle("Environment Object")
            .navigationBarTitleDisplayMode(.inline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


//import SwiftUI
//import Combine
//
//struct ContentView: View {
//    @State private var count = 0
//    @State private var timerCancellable: AnyCancellable?
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("Count: \(count)")
//                .font(.largeTitle)
//            
//            Button("Start Timer") {
//                startTimer()
//            }
//
//            Button("Stop Timer") {
//                stopTimer()
//            }
//        }
//        .onDisappear {
//            stopTimer() // Clean up
//        }
//        .padding()
//    }
//
//    func startTimer() {
//        // Prevent multiple timers
//        if timerCancellable != nil { return }
//        
//        timerCancellable = Timer
//            .publish(every: 5.0, on: .main, in: .common)
//            .autoconnect()
//            .sink { _ in
//                count += 1
//            }
//    }
//
//    func stopTimer() {
//        timerCancellable?.cancel()
//        timerCancellable = nil
//    }
//}
