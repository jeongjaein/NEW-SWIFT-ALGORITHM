//
//  main.swift
//  A - 8MathForgive
//
//  Created by 정재인 on 2020/04/11.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation


func compareAnswers(pattern : [Int]){
    
    for i in answers{ //answers 원소가 차례대로 i로 들어가고
        
        if i == pattern[flag]{//정답이면 해당 학생의 점수를 1점올리고
            score[scoreflag] += 1
        }
        
        flag += 1 //다음 문제 세팅하기위해서
        
        if flag == pattern.count {
            flag = 0
        }
        
    }
    
    flag = 0 //다음 학생 비교를 위해 초기화
    scoreflag += 1 //다음학생 점수 넣기위해 +1해주는거 ㅇㅅㅇ
}



func solution(_ answers:[Int]) -> [Int] {
    
    
    

    compareAnswers(pattern: firstpattern)
    compareAnswers(pattern: secondpattern)
    compareAnswers(pattern: thirdpattern)
    
    for i in 0..<3{
        
        if score[i] == score.max()!{
            answer.append(i+1)
            
        }
    }
    
    return answer
    
    
}









//1,2,3
var score : [Int] = [0,0,0]
var scoreflag = 0
var flag = 0
var answer : [Int] = []



let firstpattern = [1,2,3,4,5]
let secondpattern = [2,1,2,3,2,4,2,5]
let thirdpattern = [3,3,1,1,2,2,4,4,5,5]




var answers : [Int] = [1,3,2,4,2,3,2,4,2,3,4,5,6,2,1]


print(solution(answers))



