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
    
    var time : [Int] = []//시간큐
    var bridge : [Int] = []//다리에올라와있는거 표현하는 큐
    
    var flag = 0//
    var remainWeight = 10//
    
    
    while true{
        
        //시간 다지났는지 감시하는 부분
        if let timetest = time.first , bridge_length == result - timetest {
            
            time.removeFirst()
            bridge.removeFirst()
            
            remainWeight = weight - (bridge.first ?? 0)
            
        }
        //다리 남아있는 무게 재서 빈자리있으면 차 올리는 부분
        
        if flag <= truck_weights.count-1{
            //현재 다리가 올라갈수있는 무게보다 작으면
            
            if truck_weights[flag] <= remainWeight {
                bridge.append(truck_weights[flag])//다리에올림
                
                remainWeight = weight - (bridge.first ?? 0)//수정
                
                time.append(result)//0
                
                flag += 1
            }
        }
        print(bridge)
        result += 1
        
        if bridge.count == 0{
            break
        }
    }
    return result
}

var bridge_length = 2
var weight = 10
var truck_weights = [7,4,5,6]
print(solution(bridge_length,weight,truck_weights))
