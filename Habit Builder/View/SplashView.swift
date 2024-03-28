//
//  SplashView.swift
//  Habit Builder
//
//

import SwiftUI

struct SplashView: View {
    @State private var showLoginScreen = false
    var body: some View {
        ZStack {
            //Image
            Image("LaunchImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .ignoresSafeArea(.all)
            VStack {
                //Text
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
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.9) {
                showLoginScreen = true
            }
        }
        .fullScreenCover(isPresented: $showLoginScreen, content: {
            
            if UserDefaults.standard.getIsIntroNeeded() {
                IntroductionView()
            } else {
                ContentView()
            }
        })
    }
}

#Preview {
    SplashView()
}
