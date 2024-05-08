//
//  JHPLIX.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/8/24.
//

import SwiftUI

struct JHPLIX: View {
    
    @State private
    var selection = 0
    
    var body: some View {
        TabView {
            VStack{
                
            }
            .tabItem {
                Image(systemName: "house")
                Text("홈")
            }
            .tag(0)
            
            VStack{
                
            }
            .tabItem {
                Image(systemName: "square.and.arrow.down")
                Text("아무것도 아님")
            }
            .tag(1)
        }
    }
}


#Preview {
    JHPLIX()
}
