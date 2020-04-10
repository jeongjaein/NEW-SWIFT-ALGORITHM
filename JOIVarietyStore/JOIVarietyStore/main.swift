//
//  main.swift
//  JOIVarietyStore
//
//  Created by 정재인 on 2020/04/10.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

func solution (price : Int) -> Int{
    
    
    
    
    
    var exchange = 1000 - price
    var flag = 0
    var count = 0
    
    
    while true{
        if exchange >= yen[flag]{
            
            count += exchange / yen[flag]
            exchange = exchange % yen[flag]
            
            if exchange == 0{
                break
            }
        }
        flag += 1
    }
    
    
    return count
    
}







let yen : [Int] = [500,100,50,10,5,1]

var price  = Int(readLine()!)!

print(solution(price : price))
