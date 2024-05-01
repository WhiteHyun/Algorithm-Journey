//
//  main.swift
//  Algorithm
//
//  Created by 홍승현 on 2023/02/14.
//

import Foundation

let count = Int(readLine()!)!
var array: [Int] = []

for _ in 0 ..< count {
  array.append(Int(readLine()!)!)
}

print(BOJ11279().solution(array).map(String.init).joined(separator: "\n"))
