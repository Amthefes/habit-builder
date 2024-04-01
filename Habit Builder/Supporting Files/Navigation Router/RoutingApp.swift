//
//  RoutingApp.swift
//  Habit Builder
//
//

import SwiftUI

@main
struct RoutingApp: App {
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath) {
                SplashView()
                .navigationDestination(for: Router.Destination.self) { destination in
                    switch destination {
                    case .introduction:
                        IntroductionView()
                    case .home :
                        ContentView()
                    }
                }
            }
            .environmentObject(router)
        }
    }
}
