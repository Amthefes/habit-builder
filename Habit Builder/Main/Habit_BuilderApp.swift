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
    
    @ObservedObject var router = Router()
    
    var body: some Scene {
//        WindowGroup {
//            NavigationStack(path: $router.navPath) {
//                SplashView()
//                    .navigationDestination(for: Router.Destination.self) { destination in
//                        switch destination {
//                        case .introduction:
//                            IntroductionView()
//                        case .login:
//                            LoginView()
//                                .environmentObject(viewModel)
//                        }
//                    }
//            }
//            .environmentObject(router)
//        }
        
        WindowGroup {
            ContentView()
                .environmentObject(router)
        }
    }
}
