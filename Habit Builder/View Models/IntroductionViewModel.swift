//
//  IntroductionViewModel.swift
//  Habit Builder
//
//

import Foundation


class IntroductionViewModel: ObservableObject {
    @Published var showSubview = false
    @Published var ellipseSizes: [CGFloat] = [13, 11, 11, 11]
    @Published var currentIndex = 0
    @Published var images: [String] = ["Intro 1", "Intro 2", "Intro 3", "Intro 4"]
    @Published var imagesText: [String] = ["WELCOME TO\nMonumental habits", "CREATE NEW\nHABIT EASILY", "KEEP TRACK OF YOUR\nPROGRESS", "JOIN A SUPPORTIVE\nCOMMUNITY"]
    @Published var currentImageIndex = 0
    
    func updateEllipseSizes() {
        ellipseSizes[currentIndex] = 11
        currentIndex = (currentIndex + 1) % ellipseSizes.count
        ellipseSizes[currentIndex] = 13
        
        // Update current image index
        currentImageIndex = currentIndex
    }
}
