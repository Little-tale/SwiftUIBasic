//
//  ViewModifierAndModifier.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/8/24.
//

import SwiftUI


 //ViewModifier

struct ViewModifierExam: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16, weight: .regular, design: .rounded))
            .foregroundStyle(.green)
    }
    
}


struct ViewModifierAt: View {
    var body: some View {
        Text("날 수정해줘~")
            .modifier(ViewModifierExam())
    }
}
