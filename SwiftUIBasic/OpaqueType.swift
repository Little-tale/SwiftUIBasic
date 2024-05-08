//
//  OpaqueType.swift
//  SwiftUIBasic
//
//  Created by Jae hyung Kim on 5/8/24.
//

import Foundation

protocol Product {
    // 제품아이디를 위한 associatedtype
    associatedtype ProductID
    
    var productId: ProductID { get }
    
    // 무슨 제품인지 설명해주는 메서드
    func description() -> String
}

struct Macbook: Product {
    
    typealias ProductID = String
    
    var productId: String
    
    func description() -> String {
        return "엄청 값 비싼 맥북"
    }
}

struct IPhone: Product {
    
    typealias ProductID = Int
    
    var productId: Int
    
    func description() -> String {
        return "엄청 값 비싼 아이폰"
    }
}

struct Factory {
    
    func makeProduct() -> some Product {
        return Macbook(productId: "맥북 아이디!")
    }
}


/*
 다양한 숫자 타입(Int, Float, Double 등) 을 받을수 있게 합니다.
 LazyMapSequence<Array<T> , T> => map연산 결과를 지연시켜서 해당 결과게 접근할때까지 연산을 수행하지 않는 컬렉션을 반환합니다.
 */
func SquareArrayElements<T: Numeric>(array: Array<T>) -> LazyMapSequence<Array<T> , T> {
    return array.lazy.map { $0 * $0 }
}

func SquareArrayElements2<T: Numeric>(array: Array<T>) -> some Sequence {
    return array.lazy.map { $0 * $0 }
}
