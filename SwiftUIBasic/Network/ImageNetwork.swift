//
//  ImageNetwork.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/8/24.
//

import SwiftUI

enum NetworkError: Error{
    
    case invalidResponse
    
    case invalidImage
    
}

// Async 이미지도 있지만 이번엔 배운거를 접목 시켜보자
struct ImageNetwork {
    
    static let url = URL(string: "https://picsum.photos/200/300")!
    
    func fetchThumbnailAsyncAwait() async throws -> Image {
        
        let request = URLRequest(url: ImageNetwork.url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: 5)
                
        let (data,response) = try await URLSession.shared.data(for: request)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        guard let image = UIImage(data: data) else {
            throw NetworkError.invalidImage
        }

        let imagee = Image(uiImage: image)
        
        return imagee
    }

}
