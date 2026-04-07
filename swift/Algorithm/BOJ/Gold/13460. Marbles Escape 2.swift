//
//  13460. Marbles Escape 2.swift
//  https://www.acmicpc.net/problem/13460
//  Algorithm
//
//  Created by 홍승현 on 2024/05/19.
//

// MARK: - VisitedPoint

private struct VisitedPoint: Hashable {
  let redX: Int
  let redY: Int
  let blueX: Int
  let blueY: Int
}

// MARK: - BOJ13460

final class BOJ13460 {
  func solution(_ n: Int, _ m: Int, _ matrix: [[Character]]) -> Int {
    var visited: Set<VisitedPoint> = []
    var matrix = matrix

    var redPosition: (x: Int, y: Int) = (0, 0)
    var bluePosition: (x: Int, y: Int) = (0, 0)
    var goal: (x: Int, y: Int) = (0, 0)
    for i in 1 ..< n - 1 {
      for j in 1 ..< m - 1 where matrix[i][j] != "#" {
        if matrix[i][j] == "R" {
          redPosition = (i, j)
        } else if matrix[i][j] == "B" {
          bluePosition = (i, j)
        } else if matrix[i][j] == "O" {
          goal = (i, j)
        }
        matrix[i][j] = "."
      }
    }

    visited.insert(.init(redX: redPosition.x, redY: redPosition.y, blueX: bluePosition.x, blueY: bluePosition.y))
    var queue: [(redX: Int, redY: Int, blueX: Int, blueY: Int, count: Int)] = [(redPosition.x, redPosition.y, bluePosition.x, bluePosition.y, 1)]

    while !queue.isEmpty {
      let (redX, redY, blueX, blueY, count) = queue.removeFirst()
      directionLoop: for (dx, dy) in [(-1, 0), (1, 0), (0, -1), (0, 1)] {
        // blue가 먼저인 경우
        if dx * redX < dx * blueX || dy * redY < dy * blueY {
          var nx = blueX
          var ny = blueY

          while matrix[nx][ny] != "#" {
            nx += dx
            ny += dy
            // 파란 공이 들어가면 실패
            if nx == goal.x, ny == goal.y { continue directionLoop }
          }

          bluePosition = (nx - dx, ny - dy)

          // 빨간공 이동
          nx = redX
          ny = redY

          while matrix[nx][ny] != "#", nx != bluePosition.x || ny != bluePosition.y {
            nx += dx
            ny += dy
            // 빨간공만 들어갔으므로 성공
            if nx == goal.x, ny == goal.y { return count }
          }

          redPosition = (nx - dx, ny - dy)

        } else {
          var nx = redX
          var ny = redY
          var flag = false

          while matrix[nx][ny] != "#" {
            nx += dx
            ny += dy
            // 빨간 공이 들어갔으면 flag 설정
            // 파란공도 들어가면 실패이기 때문
            if nx == goal.x, ny == goal.y { flag = true }
          }

          redPosition = (nx - dx, ny - dy)

          nx = blueX
          ny = blueY

          while matrix[nx][ny] != "#", (!flag && (nx != redPosition.x || ny != redPosition.y)) || flag {
            nx += dx
            ny += dy
            // 파란공이 들어갔다면 실패
            if nx == goal.x, ny == goal.y { continue directionLoop }
          }

          bluePosition = (nx - dx, ny - dy)
          // 만약 빨간공만 들어간 상태라면
          if flag {
            return count
          }
        }

        if visited.contains(.init(redX: redPosition.x, redY: redPosition.y, blueX: bluePosition.x, blueY: bluePosition.y)) { continue }

        visited.insert(.init(redX: redPosition.x, redY: redPosition.y, blueX: bluePosition.x, blueY: bluePosition.y))
        // 10번 이내에 들어가야하므로 append 하지 않음
        if count == 10 { continue }
        queue.append((redPosition.x, redPosition.y, bluePosition.x, bluePosition.y, count + 1))
      }
    }

    return -1
  }
}
