//
//  main.swift
//  A - 11 ATM
//
//  Created by 정재인 on 2020/04/13.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

var timeSum = 0
var user = Int(readLine()!)
var useAtmTime  = readLine()
var intArray = ((useAtmTime!.components(separatedBy: " ")).compactMap { Int($0) }).sorted()

for i in 0...intArray.count - 1{
    for j in 0...i{
        timeSum += intArray[j]
    }
}

print(timeSum)
