//
//  TamagochiView.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/9/24.
//

import SwiftUI
struct TamagochiView: View {
    @State
    var foodText: String = "밥주세용"
    
    var body: some View {
        VStack {
            
            TamagochiTextFieldButtonSet(foodText: $foodText, action: {
                
            })
            .padding(.horizontal, 20)
        }
    }
}



#Preview {
    TamagochiView()
}
