//
//  TamagochiTextFieldButtonSet.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/9/24.
//

import SwiftUI


struct TamagochiTextFieldButtonSet: View {
    
    @Binding
    var foodText: String

    let action: () -> Void
    
    var body: some View {
        HStack(content: {
            TamagochiTextField(textFieldText: $foodText, placeholderText: "밥주쇼")
            Spacer()
            TamagochiButton(title: "밥먹기",action: action)
        })
    }

}
