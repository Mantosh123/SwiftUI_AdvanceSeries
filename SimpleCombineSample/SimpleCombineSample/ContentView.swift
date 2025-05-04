//
//  ContentView.swift
//  SimpleCombineSample
//
//  Created by Mantosh Kumar on 03/05/25.
//

import SwiftUI


class MyConunterModel: ObservableObject {
    
    @Published var count = 0
}

struct ContentView: View {
    
    @StateObject var model = MyConunterModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world! Mackos - \(model.count)")
            
            Button("Increment") {
                model.count += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
