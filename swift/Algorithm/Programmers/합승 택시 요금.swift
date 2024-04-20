//
//  합승 택시 요금
//  https://school.programmers.co.kr/learn/courses/30/lessons/72413
//
//  Created by whitehyun on 2023/08/21.
//

import Foundation

/// 합승 택시 요금 문제 풀이
final class ProgrammersSolution72413 {
  /// 합승 택시 요금 문제 풀이
  /// - Parameters:
  ///   - n: 지점의 개수
  ///   - startNumber: 시작 정점
  ///   - a: A의 목표 정점
  ///   - b: B의 목표 정점
  ///   - fares: 예상 택시 요금 정보
  /// - Returns: 예상 최저 택시 요금
  func solution(_ n: Int, _ startNumber: Int, _ a: Int, _ b: Int, _ fares: [[Int]]) -> Int {
    var graphMatrix: [[Int]] = Array(repeating: Array(repeating: 20_000_000, count: n), count: n)

    for i in 0 ..< n {
      graphMatrix[i][i] = 0
    }

    for fare in fares {
      graphMatrix[fare[0] - 1][fare[1] - 1] = fare[2]
      graphMatrix[fare[1] - 1][fare[0] - 1] = fare[2]
    }
    for throughNode in 0 ..< n {
      for startNode in 0 ..< n {
        for goalNode in 0 ..< n where graphMatrix[startNode][throughNode] + graphMatrix[throughNode][goalNode] < graphMatrix[startNode][goalNode] {
          graphMatrix[startNode][goalNode] = graphMatrix[startNode][throughNode] + graphMatrix[throughNode][goalNode]
        }
      }
    }

    return (0 ..< n).map {
      graphMatrix[$0][startNumber - 1] + graphMatrix[$0][a - 1] + graphMatrix[$0][b - 1]
    }.min()!
  }
}
