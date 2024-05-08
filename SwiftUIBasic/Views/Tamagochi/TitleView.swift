//
//  TitleView.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/9/24.
//

import SwiftUI

struct TitleView: View {
    
    var body: some View {
        Text("방실방실 다마고치")
            .modifier(TitleViewModifier())
    }
    
}

struct TitleViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding(.all, 10)
            .overlay {
                RoundedRectangle(cornerRadius: 10, style: .circular)
                    .stroke(lineWidth: 1)
            }
    }
}

#Preview {
    TamagochiView()
}
