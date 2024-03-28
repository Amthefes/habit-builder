//
//  Userdefault.swift
//  Habit Builder
//
//

import Foundation

extension UserDefaults {
    
    func updateIntroduction(isNeeded: Bool = true) {
        UserDefaults.standard.set(isNeeded, forKey: "Introduction")
    }
    
    func getIsIntroNeeded() -> Bool {
        if let retrievedValue = UserDefaults.standard.object(forKey: "Introduction") as? Bool {
            return retrievedValue
        } else {
            return true
        }
    }
}
