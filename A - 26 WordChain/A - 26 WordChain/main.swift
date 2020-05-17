//
//  main.swift
//  A - 26 WordChain
//
//  Created by 정재인 on 2020/05/15.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var preWord : [String] = []
    var postWord : [String] = []
    var finishWord : [String] = []
    if words[0].count > 0{
        finishWord.append(words[0])
    }
    else{
        return[1,1]
    }
    for i in 0...words.count - 2{
        if !(finishWord.contains(words[i+1])){
            if words[i][words[i].index(before: words[i].endIndex)] == words[i+1][words[i+1].startIndex]{
                if words[i+1].count > 0{
                }
                else{
                    if i+2 % n == 0{
                        return i+1 > n ? [(i+2) % n,((i+2) / n)] : [i+2,1]
                    }
                    else{
                        return i+1 > n ? [(i+2) % n,((i+2) / n)+1] : [i+2,1]
                    }
                    
                }
            }
            else{
                if i+2 % n == 0{
                    return i+1 > n ? [(i+2) % n,((i+2) / n)] : [i+2,1]
                }
                else{
                    return i+1 > n ? [(i+2) % n,((i+2) / n)+1] : [i+2,1]
                }
            }
        }
        else{
            if i+2%n == 0{
                return i+1 > n ? [(i+2) % n,((i+2) / n)] : [i+2,1]
            }
            else{
                return i+1 > n ? [(i+2) % n,((i+2) / n)+1] : [i+2,1]
            }
        }
    }
    return [0, 0]
}

print(solution(3, ["tank", "kick", "kiw", "wheel", "ldd", "dream", "mother", "robot", "tank"]))
