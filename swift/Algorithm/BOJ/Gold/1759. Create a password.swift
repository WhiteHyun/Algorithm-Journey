//
//  1759. Create a password
//  https://www.acmicpc.net/problem/1759
//  Algorithm
//
//  Created by 홍승현 on 2024/04/18.
//

import Foundation

final class BOJ1759 {
  func solution() {
    guard let count = readLine()?.components(separatedBy: .whitespaces).compactMap(Int.init).first,
          let sortedArray = readLine()?.components(separatedBy: .whitespaces).sorted()
    else {
      return
    }

    var answerArray: [String] = .init(repeating: "", count: count)
    var visited: [Bool] = .init(repeating: false, count: sortedArray.count)

    func backTracking(variableCount: Int, flagIndex: Int) {
      if variableCount == count {
        let vowelsCount = answerArray.filter { $0 == "a" || $0 == "e" || $0 == "i" || $0 == "o" || $0 == "u" }.count
        if vowelsCount > 0, answerArray.count - vowelsCount > 1 {
          print(answerArray.joined())
        }
        return
      }

      for index in (flagIndex + 1) ..< sortedArray.count where visited[index] == false {
        visited[index] = true
        answerArray[variableCount] = sortedArray[index]
        backTracking(variableCount: variableCount + 1, flagIndex: index)
        visited[index] = false
      }
    }

    backTracking(variableCount: 0, flagIndex: -1)
  }
}
