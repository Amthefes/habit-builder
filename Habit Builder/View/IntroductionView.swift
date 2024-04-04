//
//  IntroductionView.swift
//  Habit Builder
//
//

import SwiftUI

struct IntroductionView: View {
    
    //MARK: variables
    @State private var showSubview = false
    @StateObject var viewModel = IntroductionViewModel()
    @State private var isLoginViewPresented = false
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    //Text
                    Text(viewModel.imagesText[viewModel.currentImageIndex])
                        .font(.customFontForHeader(size: 32))
                        .foregroundColor(.primaryColor)
                        .tracking(-1.2)
                        .multilineTextAlignment(.center)
                        .textCase(.uppercase)
                        .padding(.top, 20)
                    Spacer()
                    //Image
                    Image(viewModel.images[viewModel.currentImageIndex])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal)
                    
                    Spacer()
                    //Text
                    Text("\(Text("We can").foregroundColor(.primaryColor)) \(Text("help you").foregroundColor(.secondaryColor)) \(Text("to be a better version").foregroundColor(.primaryColor)) \(Text("yourself.").foregroundColor(.secondaryColor))")
                        .font(.customFont(size: 17).weight(.bold))
                        .textCase(.uppercase)
                        .multilineTextAlignment(.center)
                    
                }
                
                if !showSubview {
                    HStack {
                        Button(action: {
                            showSubview = true
                        }) {
                            Text("Skip")
                                .font(.customFont(size: 17).weight(.bold))
                                .lineSpacing(24)
                                .foregroundColor(.primaryColor)
                        }
                        
                        Spacer()
                        
                        HStack {
                            ForEach(0..<viewModel.ellipseSizes.count, id: \.self) { index in
                                CustomEllipse(color: index == viewModel.currentIndex ? .eclipse : .morning, size: viewModel.ellipseSizes[index])
                            }
                        }
                        .frame(height: 17)
                        
                        Spacer()
                        
                        Button(action: {
                            if viewModel.currentIndex == 2 {
                                showSubview = true
                                viewModel.updateEllipseSizes()
                            } else {
                                viewModel.updateEllipseSizes()
                            }
                        }) {
                            Text("Next")
                                .font(.customFont(size: 17).weight(.bold))
                                .lineSpacing(24)
                                .foregroundColor(.primaryColor)
                        }
                    }
                    .frame(height: 46)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 20)
                } else {
                    Button(action: {
                        UserDefaults.standard.updateIntroduction(isNeeded: false)
                        isLoginViewPresented = true
                    }) {
                        Text("Get Started")
                            .font(.customFont(size: 17).weight(.bold))
                            .lineSpacing(16)
                            .foregroundColor(.primaryColor)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .frame(height: 46)
                    .background(Color.morning)
                    .cornerRadius(8)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 20)
                    .fullScreenCover(isPresented: $isLoginViewPresented) {
                        LoginView()
                    }
                }
            }
        }
    }
}


#Preview {
    IntroductionView()
}
