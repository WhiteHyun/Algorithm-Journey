//
//  미로 탈출
//  https://school.programmers.co.kr/learn/courses/30/lessons/159993
//
//  Created by whitehyun on 2023/02/17.
//

import Foundation

final class ProgrammersSolution159993 {
  struct CustomPoint: Equatable {
    let x: Int
    let y: Int
    var isLeverOn: Int // false: 0, true: 1
  }

  func solution(_ maps: [String]) -> Int {
    let maps = maps.map { $0.map { String($0) } }

    // 시작위치 좌표 찾기
    let (x, array) = maps.enumerated().first { _, array in array.contains("S") }!
    let y = array.firstIndex(of: "S")!

    // 존재하는 벽 좌표는 전부 방문 처리
    var visited = [0, 0].map { _ in maps.map { [Bool](repeating: false, count: $0.count) } }
    for (i, array) in maps.enumerated() {
      for (j, element) in array.enumerated() where element == "X" {
        visited[0][i][j] = true
        visited[1][i][j] = true
      }
    }

    // 큐에 시작점 추가
    var queue = Deque<CustomPoint>()
    queue.append(CustomPoint(x: x, y: y, isLeverOn: 0))
    visited[0][x][y] = true // 시작점 미리 방문 처리

    // 최소거리 계산용 변수
    var resultCount = 0

    // 상 하 좌 우 BFS 계산용
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]

    // bfs 시작
    while !queue.isEmpty {
      let count = queue.count

      for _ in 0 ..< count {
        var point = queue.popLeft()!

        // 탈출점을 찾은 경우 (레버까지 당겼는지 확인)
        if maps[point.x][point.y] == "E", point.isLeverOn == 1 {
          return resultCount
        }
        // 레버를 찾은 경우
        else if maps[point.x][point.y] == "L" {
          point.isLeverOn = 1
        }

        // 상 하 좌 우 확인
        for i in 0 ..< dx.count {
          let x = point.x + dx[i]
          let y = point.y + dy[i]

          // index out of range
          if x < 0 || x >= maps.count || y < 0 || y >= maps[0].count {
            continue
          }

          // already visited
          if visited[point.isLeverOn][x][y] {
            continue
          }

          visited[point.isLeverOn][x][y] = true
          queue.append(CustomPoint(x: x, y: y, isLeverOn: point.isLeverOn))
        }
      }
      resultCount += 1
    }
    // 탈출점을 찾지 못한 채 끝난 경우
    return -1
  }
}
