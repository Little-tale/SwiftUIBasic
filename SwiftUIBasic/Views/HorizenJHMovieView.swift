//
//  HorizenJHMoviewView.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/8/24.
//

import SwiftUI

struct HorizenJHMovieView: View {
    
    @State var images: [Image?] = Array(repeating: nil, count: 10)
    @State var ifError: NetworkError? = nil
    @State var ifShowAlert: Bool = false
    
    var body: some View {
        LazyHStack(alignment: .center, content: {
            ForEach(images.indices, id: \.self) { index in
                if let image = images[index] {
                    image
                } else {
                    Text("히히히히히히히")
                }
            }
        })
        .alert("네트워크 에러남", isPresented: $ifShowAlert, actions: {
            Button("넵") {
                
            }
        }, message: {
            Text(ifError?.errorMessage ?? "엥?")
        })
        .onAppear {
            Task {
                for index in images.indices {
                    do {
                        async let image = try ImageNetwork.fetchThumbnailAsyncAwait()
                    } catch {
                        guard let error = error as? NetworkError else { 
                            ifError = .invalidImage
                            return
                        }
                        ifError = error
                    }
                }
            }
        }
    }
}

