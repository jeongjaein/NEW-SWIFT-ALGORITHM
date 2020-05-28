//
//  main.swift
//  A - 27 sortedInt64
//
//  Created by 정재인 on 2020/05/28.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

func solution(_ n:Int64) -> Int {
    return Int(String(String(n).sorted(by: >)))!
}

print(solution(118372))

