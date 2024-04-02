//
//  NavigationStack.swift
//  Habit Builder
//
//

import SwiftUI

struct NavigationStack<Content: View>: View {
    @Binding var path: [Router.Destination]
    let content: Content
    
    init(path: Binding<[Router.Destination]>, @ViewBuilder content: () -> Content) {
        self._path = path
        self.content = content()
    }
    
    var body: some View {
        content
    }
}
