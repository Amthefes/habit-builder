//
//  CustomEllipse.swift
//  Habit Builder
//
//  Created by Aiju Eldho Issac on 28/03/2024.
//

import SwiftUI

struct CustomEllipse: View {
    let color: Color
    let size: CGFloat
    var body: some View {
        Ellipse()
            .foregroundColor(.clear)
            .frame(width: size, height: size)
            .background(color)
            .shadow(color: Color(red: 0.34, green: 0.20, blue: 0.33, opacity: 0.15), radius: 60, y: 20)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    CustomEllipse(color: .eclipse, size: 11)
}
