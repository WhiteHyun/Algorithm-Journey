//
//  753. Open the Lock
//  https://leetcode.com/problems/open-the-lock/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/22.
//

import Foundation

// MARK: - LeetCode753

final class LeetCode753 {
  func openLock(_ deadends: [String], _ target: String) -> Int {
    var deadends: Set<String> = .init(deadends)
    if deadends.contains("0000") { return -1 }

    let queue: Queue<([Character], Int)> = [(Array("0000"), 0)]

    while let (element, tried) = queue.dequeue() {
      if String(element) == target { return tried }
      for index in 0 ... 3 {
        var upperCopy = element
        if element[index].wholeNumberValue == 9 { upperCopy[index] = "0" }
        else { upperCopy[index] = Character(String((element[index].wholeNumberValue! + 1))) }
        if !deadends.contains(String(upperCopy)) {
          deadends.insert(String(upperCopy))
          queue.enqueue((upperCopy, tried + 1))
        }

        var lowerCopy = element
        if element[index].wholeNumberValue == 0 { lowerCopy[index] = "9" }
        else { lowerCopy[index] = Character(String((element[index].wholeNumberValue! - 1))) }
        if !deadends.contains(String(lowerCopy)) {
          deadends.insert(String(lowerCopy))
          queue.enqueue((lowerCopy, tried + 1))
        }
      }
    }

    return -1
  }
}
