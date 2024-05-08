//
//  TamagochiTextField.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/9/24.
//

import SwiftUI

struct TamagochiTextField: View {
    
    @Binding
    var textFieldText: String
    
    let placeholderText: String
    
    var body: some View {
        TextField(placeholderText, text: $textFieldText)
            .modifier(TamagochiTextFieldModifier())
    }
}

struct TamagochiTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .padding(.all,10)
            .multilineTextAlignment(.center)
            .overlay(alignment: .bottom) {
                Rectangle()
                    .frame(height: 2)
                    .foregroundStyle(.black)
            }
    }
}

#Preview {
    TamagochiView()
}
