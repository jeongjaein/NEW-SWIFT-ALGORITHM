//
//  main.swift
//  A - 24 FlipInteger
//
//  Created by 정재인 on 2020/05/04.
//  Copyright © 2020 정재인. All rights reserved.
//



//문제 설명
//자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴해주세요. 예를들어 n이 12345이면 [5,4,3,2,1]을 리턴합니다.
//
//제한 조건
//n은 10,000,000,000이하인 자연수입니다.
//입출력 예
//n    return
//12345    [5,4,3,2,1]

import Foundation


func solution(_ n:Int64) -> [Int] {
    var test : [Int] = []
    for i in String(n).map{String($0)}{
        test.append(Int(i)!)
    }
    return test.reversed()
}
var n : Int64 = 12345

print(solution(n))
