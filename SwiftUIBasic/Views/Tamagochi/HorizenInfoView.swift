//
//  HorizenInfoView.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/9/24.
//

import SwiftUI

struct HorizenInfoView: View {
    
    @Binding
    var riceCount: Int
    
    @Binding
    var waterCount: Int
    
    var body: some View {
        HStack(alignment: .center, spacing: 5, content: {
            Text("LV1")
            Text("﹒")
            Text("밥알  \(riceCount)개")
            Text("﹒")
            Text("물방울 \(waterCount)개")
        })
        .modifier(HorizenInfoViewModifier())
    }
}

struct HorizenInfoViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .bold()
    }
}

#Preview {
    TamagochiView()
}
