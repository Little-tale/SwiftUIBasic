//
//  TamagochiView.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/9/24.
//

import SwiftUI

struct TamagochiView: View {
    
    @StateObject private
    var viewModel = TamagochiViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            
            TitleView()
                .padding(.vertical, 20)
            
            HorizenInfoView(riceCount: $viewModel.riceCount, waterCount: $viewModel.waterCount)
            
            TamagochiTextFieldButtonSet(foodText: $viewModel.foodText, action: viewModel.upRice )
                .padding(.horizontal, 20)
            
            TamagochiTextFieldButtonSet(foodText: $viewModel.waterText, action: viewModel.upWater)
            
                .padding(.horizontal, 20)
            
            Spacer()
        }
    }
}



#Preview {
    TamagochiView()
}
