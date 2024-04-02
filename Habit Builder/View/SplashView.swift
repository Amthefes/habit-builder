//
//  SplashView.swift
//  Habit Builder
//
//

import SwiftUI

struct SplashView: View {
    @EnvironmentObject var router: Router
    
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
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                navigateToNextScreen()
            }
        }
    }
    
    func navigateToNextScreen() {
        if UserDefaults.standard.getIsIntroNeeded() {
            router.navigate(to: .introduction)
        } else {
            router.navigate(to: .login)
        }
    }
}

#Preview {
    SplashView()
}
