//
//  TamagochiButton.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/9/24.
//

import SwiftUI

struct TamagochiButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "star")
            Text(title)
        }
        .modifier(TamagochiButtonViewModifier())
    }
}

struct TamagochiButtonViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 23))
            .padding(.all, 10)
            .foregroundStyle(.black)
            .background(
                Capsule()
                    .stroke(Color.black, lineWidth: 2)
            )
            .clipShape(.capsule)
    }
}

#Preview {
    TamagochiView()
}
