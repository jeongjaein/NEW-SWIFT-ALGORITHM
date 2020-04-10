//
//  main.swift
//  A -1 FibonacciArray
//
//  Created by 정재인 on 2020/04/10.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

var fibonacciArray : [Int] = []

//n개짜리 피보나치수열을만듬
func makeFibonacciArray(n : String){

    if let userN = Int(n){
        fibonacciArray.append(0)
        fibonacciArray.append(1)

        for i in 2...userN{
            fibonacciArray.append(fibonacciArray[i-1]+fibonacciArray[i-2])
        }

    }


}

//k번째 피보나치수열의 값을 알려줌
func findFibonacciNumber(k : String){

    if let userK = Int(k){//optional때매 바인딩
        print("------------------")
        print("\(userK)번째 피보나치 수열의 값은\(fibonacciArray[userK])입니다")
        print("------------------")}
}



print("만들고싶은 피보나치수열의 크기를 입력하세요 : ")
makeFibonacciArray(n: readLine()!)

print("알고싶은 피보나치수열의 인덱스를 입력하세요 : ")
findFibonacciNumber(k: readLine()!)
