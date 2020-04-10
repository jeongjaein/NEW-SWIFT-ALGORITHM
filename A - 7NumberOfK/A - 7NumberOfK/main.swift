//
//  main.swift
//  A - 7NumberOfK
//
//  Created by 정재인 on 2020/04/11.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation




func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {


    var answerArray : [Int] = []

    for j in 0...commands.count - 1{//46432 -> sorted() -> 23446
        answerArray.append(Array(array[commands[j][0]-1...commands[j][1]-1]).sorted()[commands[j][2]-1])
    }

    return answerArray

}







var array : [Int] = [1,6,5,4,6,4,3,2,1,2,3,4,5,6,7,4,8,0,7,6,5]
var commands : [[Int]] = [[4,8,5],[6,10,4],[2,10,4],[1,8,3],[1,10,6]]

func NumberOfK(){
    print(solution(array,commands))
}
