//
//  main.swift
//  A - 12 Cross the bridge
//
//  Created by 정재인 on 2020/04/14.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    
    var result = 0//다지나가는데까지 걸린시간
    var time : [Int] = []
    var bridge : [Int] = []
    var flag = 0
    var remainWeight = 10
    
    
    while true{
        
        if let timetest = time.first , bridge_length == result - timetest {
            time.removeFirst()
            bridge.removeFirst()
            remainWeight = weight - (bridge.first ?? 0)
            
        }
        
        if flag <= truck_weights.count-1{
            if truck_weights[flag] <= remainWeight {
                bridge.append(truck_weights[flag])//다리에올림
                remainWeight = weight - (bridge.first ?? 0)
                time.append(result)
                flag += 1
            }
        }
        result += 1
        if bridge.count == 0{
            break
        }
    }
    return result
}

var bridge_length = 100
var weight = 100
var truck_weights = [10]
print(solution(bridge_length,weight,truck_weights))
