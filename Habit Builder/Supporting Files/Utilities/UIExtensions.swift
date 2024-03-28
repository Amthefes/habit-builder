//
//  UIExtensions.swift
//  Habit Builder
//
//

import SwiftUI

extension Color {
    static let primaryColor = Color("Eclipse")
    static let secondaryColor = Color("Morning")
}

extension Font {
    static func customFont(size: CGFloat) -> Font {
        return Font.custom("Manrope", size: size)
    }
    
    static func customFontForHeader(size: CGFloat) -> Font {
        return Font.custom("Klasik Regular", size: size)
    }
}

extension View {
    func customBorder(color: Color, width: CGFloat) -> some View {
        return self.border(color, width: width)
    }
    
    func customShadow(color: Color, radius: CGFloat, x: CGFloat, y: CGFloat) -> some View {
        return self.shadow(color: color, radius: radius, x: x, y: y)
    }
    
    func customPadding(_ edges: Edge.Set = .all, _ length: CGFloat) -> some View {
        return self.padding(edges, length)
    }
    
    func customBackground(color: Color) -> some View {
        return self.background(color)
    }
    
}

extension Image {
    init(customName: String) {
        self.init(customName)
    }
}

extension View {
    func customAlert(isPresented: Binding<Bool>, content: () -> Alert) -> some View {
        return self.alert(isPresented: isPresented, content: content)
    }
}

extension View {
    func customNavigationBarTitle(_ title: String) -> some View {
        return self.navigationBarTitle(title)
    }
}



