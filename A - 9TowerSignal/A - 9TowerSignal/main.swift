//
//  main.swift
//  A - 9TowerSignal
//
//  Created by 정재인 on 2020/04/11.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

func solution(_ heights:[Int]) -> [Int] {

    var answer : [Int] = []

    for i in (1...heights.count-1).reversed(){
        for j in(0...i-1).reversed(){
            if heights[i] < heights[j]{
                answer.append(j+1)
                break
            }
            if j == 0{
                answer.append(0)
            }
        }
    }

    answer.append(0)
    return answer.reversed()
}



var firstTop : [Int] = [2,3,6,9,5,7,4,2,3,3,1,5,6,7,8,9,8,7,6,5,5,4,4,3,3,3,3,2,2,3,1,3,2,4,3,4,5,4,]


func towerSignal(){
    print(firstTop.count)
    print(solution(firstTop))
}
