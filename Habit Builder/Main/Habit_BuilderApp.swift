//
//  Habit_BuilderApp.swift
//  Habit Builder
//
//

import SwiftUI
import FirebaseCore

@main

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

struct Habit_BuilderApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var viewModel = AuthenticationViewModel()

    
    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
