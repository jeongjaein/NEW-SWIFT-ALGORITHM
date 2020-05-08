//
//  main.swift
//  A - 25 SumOfFactors
//
//  Created by 정재인 on 2020/05/08.
//  Copyright © 2020 정재인. All rights reserved.
//

//문제 설명
//정수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
//
//제한 사항
//n은 0 이상 3000이하인 정수입니다.
//입출력 예
//n    return
//12    28
//5    6
//입출력 예 설명
//입출력 예 #1
//12의 약수는 1, 2, 3, 4, 6, 12입니다. 이를 모두 더하면 28입니다.
//
//입출력 예 #2
//5의 약수는 1, 5입니다. 이를 모두 더하면 6입니다.

import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    if n == 0 {
        return 0
    }
    for i in 1..<n{
        if n % i == 0{
            result += n / i
            print(n/i)
        }
    }
    result += 1
    return result
}

print(solution(12))
print(solution(5))
print(solution(1))
print(solution(2))
print(solution(0))
