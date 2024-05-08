//
//  TabagochiViewModel.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/9/24.
//

import SwiftUI


final class TamagochiViewModel: ObservableObject {
    
    @Published
    var foodText: String = "밥주세용"
    
    @Published
    var waterText: String = "물이라두..."
    
    @Published
    var riceCount: Int = 0
    
    @Published
    var waterCount: Int = 0
    
    
    func upWater() {
        waterCount += 1 
    }
    
    func upRice() {
        riceCount += 1
    }
    
}
