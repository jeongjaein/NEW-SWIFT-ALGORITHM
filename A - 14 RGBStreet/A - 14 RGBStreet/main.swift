//
//  main.swift
//  A - 14 RGBStreet
//
//  Created by 정재인 on 2020/04/19.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation



var total = Int(readLine()!)!
var colorPrice : [[Int]] = []
var sum = [0,0,0]

for i in 0...total-1{
    colorPrice.append(readLine()!.components(separatedBy: " ").map({ (value : String) -> Int in return Int(value)! }))
    
}
var copyArray = colorPrice

for i in 0...colorPrice.count-1{
    if i == 0{
        sum[0] += colorPrice[i][0]
        print(colorPrice[i][0])
        colorPrice[i+1][0] = 100
    }
    else{
        sum[0] += colorPrice[i].min()!
        print(colorPrice[i].min()!)
        if i < colorPrice.count-1{
            colorPrice[i+1][(colorPrice[i].firstIndex(of: colorPrice[i].min()!))!] = 100
        }
        
        
    }
    print(colorPrice)
}
colorPrice = copyArray
for i in 0...colorPrice.count-1{
    if i == 0{
        sum[1] += colorPrice[i][1]
        colorPrice[i+1][1] = 100
        
    }
    else{
        sum[1] += colorPrice[i].min()!
        print(colorPrice[i].min()!)
        if i < colorPrice.count-1{
            colorPrice[i+1][(colorPrice[i].firstIndex(of: colorPrice[i].min()!))!] = 100
        }
        
        
    }
}
colorPrice = copyArray
for i in 0...colorPrice.count-1{
    if i == 0{
        sum[2] += colorPrice[i][2]
        colorPrice[i+1][2] = 100
        print(colorPrice[i][2])
    }
    else{
        sum[2] += colorPrice[i].min()!
        print(colorPrice[i].min()!)
        if i < colorPrice.count-1{
            colorPrice[i+1][(colorPrice[i].firstIndex(of: colorPrice[i].min()!))!] = 100
        }
        
        
    }
}
print(sum.min()!)
