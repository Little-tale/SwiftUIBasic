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
        ScrollView(.horizontal) {
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
            .task {
                do {
                    try await asyncGetImage()
                } catch let error as NetworkError {
                    ifError = error
                } catch {
                    ifError = .invalidResponse
                }
            }
        }
       
    }
}

extension HorizenJHMovieView {
    func asyncGetImage() async throws {
       try await withThrowingTaskGroup(of: (Int, Image?, NetworkError?).self ) { group in
            
            for index in images.indices {
                group.addTask(priority: .userInitiated) {
                    do {
                        let image = try await ImageNetwork.fetchThumbnailAsyncAwait()
                        return (index, image, nil)
                    } catch (let error as NetworkError) {
                        return (index, nil, error)
                    } catch {
                        return (index, nil, .invalidResponse)
                    }
                }
            }
            
            for try await (index, image, error) in group {
                if let image = image {
                    images[index] = image
                } else if let error = error {
                    throw error
                }
            }
            
        }
    }
}

