//
//  main.swift
//  MathForgive
//
//  Created by 정재인 on 2020/04/09.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    func compareAnswers(pattern : [Int]){
        for i in answers{
            if i == pattern[flag]{
                score[scoreflag] += 1
            }
            flag += 1
            if flag == pattern.count {
                flag = 0
            }
        }
        flag = 0
        scoreflag += 1
    }
    

    compareAnswers(pattern: firstpattern)
    compareAnswers(pattern: secondpattern)
    compareAnswers(pattern: thirdpattern)
    print(score)
    
    for i in 0..<3{
        if score[i] == score.max()!{
            answer.append(i+1)
        }
    }
    
    return answer
    
    
}

var score : [Int] = [0,0,0]
var scoreflag = 0
var flag = 0
var answer : [Int] = []
let firstpattern = [1,2,3,4,5]
let secondpattern = [2,1,2,3,2,4,2,5]
let thirdpattern = [3,3,1,1,2,2,4,4,5,5]




var answers : [Int] = [1,3,2,4,2]
print(solution(answers))






//    for i in answers{
//        if i == firstpattern[test]{
//            score[0] += 1
//        }
//        test += 1
//        if test == 5 {
//            test = 0
//        }
//    }
//
//    test = 0
//
//    for i in answers{
//        if i == secondpattern[test]{
//            score[1] += 1
//        }
//        test += 1
//        if test == 8{
//            test = 0
//        }
//    }
//
//    test = 0
//
//    for i in answers{
//        if i == thirdpattern[test]{
//            score[2] += 1
//        }
//        test += 1
//        if test == 10{
//            test = 0
//        }
//    }
//
    
