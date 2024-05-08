//
//  HorizenJHMoviewView.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/8/24.
//

import SwiftUI

struct HorizenJHMovieView: View {
    var body: some View {
        LazyHStack(alignment: .center, content: {
            ForEach(1...10, id: \.self) { count in
                /*@START_MENU_TOKEN@*/Text("Placeholder \(count)")/*@END_MENU_TOKEN@*/
            }
        })
    }
}

