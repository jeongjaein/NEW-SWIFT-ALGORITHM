//
//  main.swift
//  A - 13 Hip
//
//  Created by 정재인 on 2020/04/15.
//  Copyright © 2020 정재인. All rights reserved.
//

import Foundation


var n  = 0
var k = 0
var flag = Int(readLine()!)
var save : [Int] = []


var negative : [Int] = []
var positive : [Int] = []



for _ in 0..<flag!{
    n = Int(readLine()!)!
    if n == 0 {
        if negative.isEmpty == true || positive.isEmpty == true{
            
            if let min = negative.max(){
                save.append(min)
                negative.remove(at: negative.firstIndex(of: min)!)
                //                print(save)
            }
                
            else if let min = positive.min(){
                save.append(min)
                positive.remove(at: positive.firstIndex(of: min)!)
                //                print(save)
            }
                
            else{
                save.append(0)
                //                print(save)
            }
            
        }
            
            
        else {//이게 -2가들어오면 2가 가장작은수기때문에 그거를 제일 작은걸로 아네
            
            if abs(negative.max()!) > abs(positive.min()!) {
                save.append(positive.min()!)
                positive.remove(at: positive.firstIndex(of: (positive.min()!))!)
            }
                
            else{
                save.append(negative.max()!)
                negative.remove(at: negative.firstIndex(of: (negative.max()!))!)
                
            }
        }
        
    }
    else{
        if n > 0{
            positive.append(n)
        }
            
        else{
            negative.append(n)
        }
    }
    
    
    
}

for i in save{
    print(i)
}


//for i in 0...flag!{
//
//    n = Int(readLine()!)!
//
//    if n != 0{
//        heap.append(n)
//        heap2.append(abs(n))
//        print(heap,heap2)
//    }
//    else{
//
//        if let min = heap2.min(){
//            save.append(heap[heap2.firstIndex(of: (min))!])
//            print(save)
//            heap.remove(at: heap2.firstIndex(of: (min))!)
//            heap2.remove(at: heap2.firstIndex(of: (min))!)
//            print(heap,heap2)
//        }
//        else{
//            save.append(0)
//        }
//
//    }
//    k += 1
//
//}
//
//for i in save{
//    print(i)
//}
//
