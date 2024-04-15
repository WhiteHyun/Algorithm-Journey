//
//  무인도 여행
//  https://school.programmers.co.kr/learn/courses/30/lessons/154540
//
//  Created by whitehyun on 2023/02/15.
//

import Foundation

struct Number154540 {
  func solution(_ maps: [String]) -> [Int] {
    if maps.filter({ $0.count != $0.filter { $0 == "X" }.count }).isEmpty { return [-1] }
    let maps = maps.map { $0.map { String($0) } }
    var visited = maps.map { _ in [Bool](repeating: false, count: maps[0].count) }
    let dx = [-1, 1, 0, 0]
    let dy = [0, 0, -1, 1]

    // checked `visited` when map's value is "X"
    for i in 0 ..< maps.count {
      for j in 0 ..< maps[0].count {
        visited[i][j] = maps[i][j] == "X"
      }
    }

    var resultArray = [Int]()

    while !visited.filter({ $0.contains(false) }).isEmpty {
      resultArray.append(0)

      // find untracked nodes
      let (x, array) = visited.enumerated().first { _, array in
        array.contains(false)
      }!
      let (y, _) = array.enumerated().first { _, value in
        value == false
      }!

      // bfs 진행
      var queue = Deque<Point>()
      queue.append(Point(x: x, y: y))
      visited[x][y] = true
      while !queue.isEmpty {
        let point = queue.popLeft()!
        resultArray.append(resultArray.popLast()! + Int(maps[point.x][point.y])!)

        for i in 0 ..< dx.count {
          // 상 하 좌 우 확인
          let x = point.x + dx[i]
          let y = point.y + dy[i]

          // indexs out of range
          if x < 0 || x >= maps.count || y < 0 || y >= maps[0].count {
            continue
          }

          // 이미 방문한 경우
          if visited[x][y] {
            continue
          }

          visited[x][y] = true
          queue.append(Point(x: x, y: y))
        }
      }
    }

    return resultArray.sorted()
  }
}
