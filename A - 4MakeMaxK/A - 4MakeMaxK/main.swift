//
//  main.swift
//  A - 4MakeMaxK
//
//  Created by 정재인 on 2020/04/10.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

func solution(n : Int, k : Int) -> Int{
    
    var newK = k
    var answer : Int = 0
    
    
    for i in (0...n).reversed(){
        if coinArray[i]<=newK{
            answer += newK/coinArray[i]
            newK %= coinArray[i]
        }
    }
    return answer
}

var coinArray : [Int] = [1,5,10,100,500,1000,5000,10000,50000]
var k = 6321


func howMuch(){
    print(solution(n: coinArray.count-1,k: k))
}
