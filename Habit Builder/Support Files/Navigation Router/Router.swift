//
//  Router.swift
//  Habit Builder
//
//

import SwiftUI

final class Router: ObservableObject {
    
    enum Destination: Hashable {
        case introduction
        case login
    }
    
    @Published var navPath = [Destination]()
    
    func navigate(to destination: Destination) {
        navPath.append(destination)
    }
    
    func navigateBack() {
        _ = navPath.popLast()
    }
    
    func navigateToRoot() {
        navPath.removeAll()
    }
}
