//
//  SplashView.swift
//  Habit Builder
//
//

import SwiftUI
import FirebaseAuth

struct SplashView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        ZStack {
            // Image
            Image("LaunchImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .ignoresSafeArea(.all)
            VStack {
                // Text
                Text("WELCOME TO\nMonumental\nhabits")
                    .font(.customFontForHeader(size: 40))
                    .foregroundColor(.primaryColor)
                    .tracking(-1.2)
                    .multilineTextAlignment(.center)
                    .textCase(.uppercase)
                Spacer()
            }
            .padding(.top, 64)
        }
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation { // Add animation for smoother transition (optional)
                    isActive = true
                }
            }
        }
        .fullScreenCover(isPresented: $isActive) {
            if Auth.auth().currentUser?.uid != nil {
                
            } else {
                if UserDefaults.standard.getIsIntroNeeded() {
                    IntroductionView()
                } else {
                    LoginView()
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
