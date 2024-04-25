//
//  main.swift
//  Algorithm
//
//  Created by 홍승현 on 2023/02/14.
//

import Foundation

let array = readLine()!.components(separatedBy: " ").compactMap(Int.init)
var lake: [[Character]] = []

for _ in 0..<array[0] {
  lake.append(Array(readLine()!))
}

print(BOJ3197().solution(array[0], array[1], lake))
