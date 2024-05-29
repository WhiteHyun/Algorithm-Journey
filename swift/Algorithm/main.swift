//
//  main.swift
//  Algorithm
//
//  Created by 홍승현 on 2023/02/14.
//

import Foundation

let count = Int(readLine()!)!
let boj = BOJ1707()

for _ in 0 ..< count {
  let configInput = readLine()!.split(separator: " ").compactMap { Int(String($0)) }
  var edges: [(Int, Int)] = []
  for _ in 0 ..< configInput[1] {
    let edge = readLine()!.split(separator: " ").compactMap { Int(String($0)) }
    edges.append((edge[0], edge[1]))
  }
  if boj.isBipartite(configInput[0], edges) {
    print("YES")
  } else {
    print("NO")
  }
}
