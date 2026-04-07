//
//  773. Sliding Puzzle.swift
//  https://leetcode.com/problems/sliding-puzzle/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/11/25.
//

final class LeetCode773 {
  func slidingPuzzle(_ board: [[Int]]) -> Int {
    let m = 2
    let n = 3
    let sample = [[1, 2, 3], [4, 5, 0]]

    if board == sample { return 0 }

    let queue: Queue<(puzzles: [[Int]], count: Int)> = [(board, 0)]
    var isVisited: Set<[[Int]]> = [board]

    let directions: [(dx: Int, dy: Int)] = [(1, 0), (-1, 0), (0, 1), (0, -1)]

    while let (puzzle, count) = queue.dequeue() {
      // find '0'
      for i in puzzle.indices {
        for j in puzzle[i].indices where puzzle[i][j] == 0 {
          for direction in directions {
            let x = i + direction.dx
            let y = j + direction.dy

            guard 0 ..< m ~= x,
                  0 ..< n ~= y
            else {
              continue
            }

            var moved = puzzle

            (moved[x][y], moved[i][j]) = (moved[i][j], moved[x][y])
            if isVisited.contains(moved) { continue }

            if sample == moved { return count + 1 }

            isVisited.insert(moved)
            queue.enqueue((moved, count + 1))
          }
        }
      }
    }

    return -1
  }
}
