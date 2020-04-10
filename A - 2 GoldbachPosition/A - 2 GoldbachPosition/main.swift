//
//  main.swift
//  A - 2 GoldbachPosition
//
//  Created by 정재인 on 2020/04/10.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation

var count = 0

var realSosuArray : [Int] = []

var gbarry1: [Int] = []
var gbarry2: [Int] = []

var index : Int = 0


var Max : Int = 0

//재귀부분
//i는 3부터 사용자가입력한 숫자까지 반복될 매개변수
//sosuArray는 realSosuArray(초기엔 2만들어가있음)를 받아온 매개변수
func makeSosu(i : Int,sosuArray : [Int]){
    //처음돌때 i==3, count==0, sosuArray[count] == 1
    if i % sosuArray[count] == 0{
        count = 0
    }
    else{
        //i==3이면 일로들어와서
        count += 1
        //count +=1 은 첫번째 소수로는 안나눠짐 -> 그 다음 소수로 나눠봐야됨
        //다음 소수가 없을 경우엔 if문을 들어가지못하고 있으면 들어가서 비교
        if count < sosuArray.count{//
            //재귀로 i는 같은 상태에서 count를 올려 그다음 소수와 비교를 해본다.
            makeSosu(i : i,sosuArray: sosuArray)
        }
        else {//앞서 재귀로 구해온 소수들로 안나눠졌을때 비로소 이게 ㄹㅇ 소수구나 싶으니 소수배열에 마지막원소로 추가해줌
            realSosuArray.append(i)
            print(i)
            count = 0//그리고 추가해준후 count를 초기화 해서 i 를 i보다 작은 소수들로 나눌 준비를 해줌
        }
    }
}

//결론은 사용자가 입력한 n 보다 작은 수 중에서 2,3,5,7,11 이런 소수들로만 비교해서 찾음 4,6,8,9 이런 소수가아닌수는 비교안하게끔
func findGB(n : Int){
    for i in 0...realSosuArray.count-2{
        for j in 0...realSosuArray.count-2{
            if realSosuArray[i] + realSosuArray[j] == n{
                gbarry1.append(realSosuArray[i])//2차원배열
                gbarry2.append(realSosuArray[j])
            }
            else{
                
            }
        }
        
    }
    
    for i in 0...gbarry1.count-1{
        
        if gbarry1[i] > gbarry2[i]{
            if Max > gbarry1[i] - gbarry2[i]{
                Max = gbarry1[i] - gbarry2[i]
                index = i
            }
        }
        else{
            gbarry2[i] - gbarry1[i]
        }
    }
    
    print("\(gbarry1[index]),\(gbarry2[index]) 가 골드바흐 포지션입니다.")
}

realSosuArray.append(2)
print(realSosuArray.count)
let n = Int(readLine()!)!

for i in 3...n{
    makeSosu(i: i,sosuArray: realSosuArray)
}
findGB(n: n)
