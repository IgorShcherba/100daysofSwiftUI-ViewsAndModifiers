//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Igor Shcherba on 18/04/2024.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.subheadline)
                .foregroundStyle(.white)
                .padding(10)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(_ text: String) -> some View {
        return modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Color.blue
                .frame(width: 300, height: 300)
        }
//        .modifier(Watermark(text: "dsdsd"))
        .watermarked("Some text")
    }
}

#Preview {
    ContentView()
}
