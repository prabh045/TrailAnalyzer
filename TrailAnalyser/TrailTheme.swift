//
//  TrailTheme.swift
//  TrailAnalyser
//
//  Created by Prabhdeep Singh on 31/08/26.
//

import SwiftUI

struct TrailTheme: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            VStack {
                Image("Background")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .ignoresSafeArea()
                Spacer()
            }
            content
                .padding(.horizontal)
        }
        .background(Color(white: 0.94))
    }
}

extension View {
    func trailTheme() -> some View {
        modifier(TrailTheme())
    }
}

#Preview {
    Text("Hello, World!")
        .trailTheme()
}
