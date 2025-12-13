//
//  2212. Sensors.swift
//  https://www.acmicpc.net/problem/2212
//  Algorithm
//
//  Created by 홍승현 on 2024/04/25.
//

import Foundation

final class BOJ2212 {
  func solution(_ n: Int, _ k: Int, _ centralStations: [Int]) -> Int {
    if k >= n { return 0 }
    let centralPoints: [Int] = Set(centralStations).sorted()
    var distanceDiff: [Int] = []

    for index in centralPoints.indices.dropFirst() {
      distanceDiff.append(centralPoints[index] - centralPoints[index - 1])
    }

    return distanceDiff.sorted()[..<(distanceDiff.endIndex - k + 1)].reduce(0, +)
  }
}
