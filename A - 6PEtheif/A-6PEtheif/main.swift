//
//  main.swift
//  A-6PEtheif
//
//  Created by 정재인 on 2020/04/11.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var finalStudent = [Int](repeating: 1, count: n) //[1,0,1,0,1]
    
    var res = reserve
    for i in lost{
        finalStudent[i-1] = 0
        
        if res.contains(i){
            finalStudent[i-1] = 1
            res[res.firstIndex(of: i)!] = 0
        }
            
        else if res.contains(i-1){
            finalStudent[i-1] = 1
            res[res.firstIndex(of: i-1)!] = 0
        }
            
        else if reserve.contains(i+1){
            finalStudent[i-1] = 1
            res[res.firstIndex(of: i+1)!] = 0
        }
    }
    
    print(finalStudent)

    return finalStudent.reduce(0, +)
    
    
}

var lost : [Int] = [2,4]
var reserve : [Int] = [3,5]

    


func peTheif(){
    print(solution(5, lost, reserve))
}
