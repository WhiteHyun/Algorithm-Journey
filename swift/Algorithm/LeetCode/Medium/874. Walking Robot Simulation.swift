//
//  874. Walking Robot Simulation.swift
//  https://leetcode.com/problems/walking-robot-simulation/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/04.
//

final class LeetCode874 {
  struct Point: Hashable {
    var x: Int
    var y: Int

    var squaredDistance: Int {
      x * x + y * y
    }

    static func += (lhs: inout Point, rhs: Point) {
      lhs.x = lhs.x + rhs.x
      lhs.y = lhs.y + rhs.y
    }
  }

  func robotSim(_ commands: [Int], _ obstacles: [[Int]]) -> Int {
    var startPoint: Point = .init(x: 0, y: 0)
    var furthestDistance = 0

    var obstaclesSet: Set<Point> = []
    for obstacle in obstacles {
      obstaclesSet.insert(.init(x: obstacle[0], y: obstacle[1]))
    }

    let directionArray: [(dx: Int, dy: Int)] = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    var direction = 0
    for command in commands {
      if command == -1 {
        direction = (direction + 1) % 4
        continue
      }
      if command == -2 {
        direction = (direction - 1 + 4) % 4
        continue
      }

      for _ in 0 ..< command {
        startPoint += Point(x: directionArray[direction].dx, y: directionArray[direction].dy)

        if obstaclesSet.contains(startPoint) {
          startPoint += Point(x: -directionArray[direction].dx, y: -directionArray[direction].dy)
          break
        }
      }
      if furthestDistance < startPoint.squaredDistance {
        furthestDistance = startPoint.squaredDistance
      }
    }

    return furthestDistance
  }
}
