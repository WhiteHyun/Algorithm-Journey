//
//  10775. Airport.swift
//  https://www.acmicpc.net/problem/10775
//  Algorithm
//
//  Created by 홍승현 on 2024/04/24.
//

import Foundation

final class BOJ10775 {
  private func findIdleGate(_ gateStatus: inout [Int], gateNumber: Int) -> Int {
    if gateStatus[gateNumber] != gateNumber {
      gateStatus[gateNumber] = findIdleGate(&gateStatus, gateNumber: gateStatus[gateNumber])
    }
    return gateStatus[gateNumber]
  }

  func solution(_ gatesCount: Int, _ airplanes: [Int]) -> Int {
    var gateStatus: [Int] = Array(0 ... gatesCount)
    var count = 0
    for airplane in airplanes {
      let idleGate = findIdleGate(&gateStatus, gateNumber: airplane)
      if idleGate == 0 {
        break
      }
      gateStatus[idleGate] = idleGate - 1
      count += 1
    }
    return count
  }
}
