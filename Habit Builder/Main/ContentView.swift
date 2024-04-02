//
//  ContentView.swift
//  Habit Builder
//
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        NavigationView {
            NavigationStack(path: $router.navPath) {
                SplashView()
                    .navigationDestination(for: IntroductionView.self, router: router) {
                        IntroductionView()
                    }
                    .navigationDestination(for: LoginView.self, router: router) {
                        LoginView()
                    }
            }
            .navigationBarHidden(true)
        }
    }
}
