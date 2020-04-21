//
//  main.swift
//  A -16 GetCenterChar
//
//  Created by 정재인 on 2020/04/21.
//  Copyright © 2020 정재인. All rights reserved.
//
//문제 설명
//단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.
//
//재한사항
//s는 길이가 1 이상, 100이하인 스트링입니다.
//입출력 예
//s    return
//abcde    c

import Foundation

func solution(_ s:String) -> String {
    let flag = s.count
    var result : String?
    if flag % 2 == 0 {
        result = (String(s[s.index(s.startIndex, offsetBy: (flag/2)-1)]))
        result?.append(String(s[s.index(s.startIndex, offsetBy: flag/2)]))
    }
    else{
        result = String(s[s.index(s.startIndex, offsetBy: flag/2)])
    }
    
    return result!
}
var targetString = "abcded"
print(targetString.count)
print(solution(targetString))

