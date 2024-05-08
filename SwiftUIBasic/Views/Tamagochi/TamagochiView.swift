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
    
    @State
    var waterText: String = "물이라도."
    
    @State
    var riceCount: Int = 0
    
    @State
    var waterCount: Int = 0
    
    var body: some View {
        VStack(spacing: 20) {
            
            TitleView()
                .padding(.vertical, 20)
            HorizenInfoView(riceCount: $riceCount, waterCount: $waterCount)
            
            TamagochiTextFieldButtonSet(foodText: $foodText, action: {
                waterCount += 1
            })
            .padding(.horizontal, 20)
            
            TamagochiTextFieldButtonSet(foodText: $waterText) {
                riceCount += 1
            }
            .padding(.horizontal, 20)
            
            Spacer()
        }
        
    }
}



#Preview {
    TamagochiView()
}
