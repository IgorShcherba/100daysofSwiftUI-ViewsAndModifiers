//
//  ViewCompositionExampleView.swift
//  ViewsAndModifiers
//
//  Created by Igor Shcherba on 22/04/2024.
//

import SwiftUI

struct CapsuleText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ViewCompositionExampleView: View {
    var body: some View {
        CapsuleText(text: "Hello world")
    }
}

#Preview {
    ViewCompositionExampleView()
}
