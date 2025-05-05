//
//  ContentView.swift
//  SwiftUITo_ViewCtr_NavigationFlow
//
//  Created by Mantosh Kumar on 05/05/25.
//

import SwiftUI


import SwiftUI

@MainActor
func pushStoryboardViewController() {
    guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
          let window = scene.windows.first,
          let rootNav = findNavigationController(from: window.rootViewController) else {
        print("NavigationController not found")
        return
    }

    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(withIdentifier: "PaymentViewController")
    rootNav.pushViewController(vc, animated: true)
}

func findNavigationController(from vc: UIViewController?) -> UINavigationController? {
    if let nav = vc as? UINavigationController {
        return nav
    } else if let tab = vc as? UITabBarController {
        return findNavigationController(from: tab.selectedViewController)
    } else if let presented = vc?.presentedViewController {
        return findNavigationController(from: presented)
    } else {
        return vc?.navigationController
    }
}

struct ContentView: View {
    
    @State var showViewCtr = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                
                Button("Go For Payment.. ") {
                    // move to next scrren
                    moveToPayent()
                }
            }
            .padding()
            .navigationTitle("Home View")
        }
    }
    
    func moveToPayent() {
        pushStoryboardViewController()
    }
}

#Preview {
    ContentView()
}
