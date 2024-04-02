//
//  LoginView.swift
//  Habit Builder
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        ZStack {
            Image(customName: "LoginImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .ignoresSafeArea(.all)
            
            VStack {
                Spacer()
                Spacer()
                Spacer()
                
                Text("WELCOME TO\nMonumental habits")
                    .font(.customFontForHeader(size: 32))
                    .foregroundColor(.primaryColor)
                    .multilineTextAlignment(.center)
                    .textCase(.uppercase)
                    .padding(.bottom, 40)
                
                Button(action: {
                    viewModel.signIn()
                }, label: {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(height: 50)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        HStack {
                            Image(customName: "GoogleIcon")
                                .frame(width: 23, height: 23)
                                .padding(.top)
                                .padding(.bottom, 10)
                                .padding(.horizontal)
                            Text("Continue with  Google")
                                .font(.customFont(size: 16).bold())
                                .lineSpacing(16)
                                .foregroundColor(.eclipse)
                        }
                    }
                })
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    LoginView()
}
