//
//  main.swift
//  A - 24 ReturnPattern
//
//  Created by 정재인 on 2020/05/06.
//  Copyright © 2020 정재인. All rights reserved.
//


//문제 설명
//길이가 n이고, 수박수박수박수....와 같은 패턴을 유지하는 문자열을 리턴하는 함수, solution을 완성하세요. 예를들어 n이 4이면 수박수박을 리턴하고 3이라면 수박수를 리턴하면 됩니다.
//
//제한 조건
//n은 길이 10,000이하인 자연수입니다.
//입출력 예
//n    return
//3    수박수
//4

import Foundation

func solution(_ n:Int) -> String {
    var result  = ""
    for i in 0..<n {
        if i % 2 == 0{
            result.append("수")
        }
        
        else {
            result.append("박")
        }
    }
    return result
}


print(solution(4))
