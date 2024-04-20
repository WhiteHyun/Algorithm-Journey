//
//  등산코스 정하기
//  https://school.programmers.co.kr/learn/courses/30/lessons/118669
//
//  Created by whitehyun on 2023/08/18.
//

import Foundation

// MARK: - MountainClimbingInfo

private struct MountainClimbingInfo {
  /// 출입구 번호
  var entranceNumber: Int

  /// 현재 위치
  var position: Int

  /// 방문한 산 중턱 번호
  var visitedMountains: Set<Int>

  /// 진입한 산봉우리 번호
  var summitNumber: Int?

  /// 산 중턱간 최대로 걸린 시간
  var intensity: Int?

  init(entranceNumber: Int, summitNumber: Int? = nil, intensity: Int? = nil) {
    self.entranceNumber = entranceNumber
    position = entranceNumber
    visitedMountains = [entranceNumber]
    self.summitNumber = summitNumber
    self.intensity = intensity
  }
}

// MARK: Comparable

extension MountainClimbingInfo: Comparable {
  static func < (lhs: MountainClimbingInfo, rhs: MountainClimbingInfo) -> Bool {
    if lhs.intensity == rhs.intensity {
      return lhs.summitNumber ?? Int.max < rhs.summitNumber ?? Int.max
    }
    return lhs.intensity ?? Int.max < rhs.intensity ?? Int.max
  }
}

// MARK: - ProgrammersSolution118669

final class ProgrammersSolution118669 {
  /// 등산코스 정하기 문제 풀이
  /// - Parameters:
  ///   - n: 산 중턱 개수
  ///   - paths: 각 산 중턱간의 길 정보
  ///   - gates: 출입구 정보
  ///   - summits: 산봉우리 정보
  /// - Returns: intensity 최솟값을 갖는 산봉우리와 intensity, 만약 intensity가 최소인 경우가 많다면 산봉우리가 제일 낮은 것을 리턴함.
  func solution(_ n: Int, _ paths: [[Int]], _ gates: [Int], _ summits: [Int]) -> [Int] {
    let summits: Set<Int> = Set(summits)
    let gates: Set<Int> = Set(gates)

    // == Setting graphs ==
    var graphMatrix: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    var graphsIndices: [[Int]] = Array(repeating: Array(repeating: 0, count: 0), count: n)

    for path in paths {
      graphMatrix[path[0] - 1][path[1] - 1] = path[2]
      graphMatrix[path[1] - 1][path[0] - 1] = path[2]
    }

    for index in 0 ..< n {
      graphsIndices[index] = graphMatrix[index].enumerated()
        .filter { $0.element != 0 }
        .sorted { lhs, rhs in
          if lhs.element == rhs.element {
            return lhs.offset > rhs.offset
          }
          return lhs.element > rhs.element
        }
        .map(\.offset)
    }

    // == setting stacks for DFS(Depth First Search) ==
    var gateStack: [MountainClimbingInfo] = []
    for gate in gates {
      gateStack.append(.init(entranceNumber: gate))
    }

    // == answer variable settings ==
    var answer: MountainClimbingInfo = .init(entranceNumber: -1)

    // == DFS Process ==
    while let startInfo = gateStack.popLast() {
      var stack: [MountainClimbingInfo] = [startInfo]

      while let poppedInfo = stack.popLast() {
        // 연결되어있는 노드만 탐색
        for index in graphsIndices[poppedInfo.position - 1] {
          // 계속 왔다갔다 하는 경우 무시
          if poppedInfo.visitedMountains.contains(index + 1) { continue }
          // 또다른 출입구에 도착한 경우
          if gates.contains(index + 1) { continue }
          // 만약 각 산 중턱마다 걸리는 최대시간이 기존에 구한 `정답코스`보다 큰 경우 무시
          if answer.intensity ?? Int.max < graphMatrix[poppedInfo.position - 1][index] { continue }

          // 새로운 등산 정보 할당 후 intensity 설정
          var newInfo = poppedInfo
          newInfo.intensity = max(poppedInfo.intensity ?? 0, graphMatrix[newInfo.position - 1][index])

          // 현위치가 산봉우리인 경우
          if summits.contains(index + 1) {
            newInfo.summitNumber = index + 1 // 산봉우리 등록
            answer = min(answer, newInfo)
            continue
          }

          newInfo.visitedMountains.insert(index + 1)
          newInfo.position = index + 1
          stack.append(newInfo)
        }

        if stack.last?.summitNumber != nil {
          answer = min(answer, stack.last!)
          break
        }
      }
    }

    precondition(answer.summitNumber != nil && answer.intensity != nil)
    return [answer.summitNumber!, answer.intensity!]
  }
}
