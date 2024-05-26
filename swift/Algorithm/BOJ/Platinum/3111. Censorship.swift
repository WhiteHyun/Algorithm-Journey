//
//  3111. Censorship
//  https://www.acmicpc.net/problem/3111
//  Algorithm
//
//  Created by 홍승현 on 2024/04/22.
//

import Foundation

// MARK: - CensorFlag

enum CensorFlag {
  case left
  case right

  mutating func toggle() {
    self = self == .left ? .right : .left
  }
}

// MARK: - BOJ3111

final class BOJ3111 {
  func solution(_ censoredString: String, _ text: String) -> String {
    var leftStack: [Character] = []
    var rightStack: [Character] = []

    let textArray: Deque<Character> = .init()
    for element in text {
      textArray.append(element)
    }

    var flag: CensorFlag = .left

    let censoredString: ArraySlice<Character> = .init(censoredString)
    let censoredReversedString: ArraySlice<Character> = .init(censoredString.reversed())

    while !textArray.isEmpty {
      if flag == .left {
        leftStack.append(textArray.popFirst()!)
        if leftStack.count >= censoredString.count,
           leftStack.last == censoredString.last,
           leftStack[(leftStack.endIndex - censoredString.count)...] == censoredString {
          leftStack.removeLast(censoredString.count)
          flag.toggle()
        }
      } else {
        rightStack.append(textArray.popLast()!)
        if rightStack.count >= censoredString.count,
           rightStack.last == censoredString.first,
           rightStack[(rightStack.endIndex - censoredString.count)...] == censoredReversedString {
          rightStack.removeLast(censoredString.count)
          flag.toggle()
        }
      }
    }

    while let element = rightStack.popLast() {
      leftStack.append(element)
      if leftStack.count >= censoredString.count,
         leftStack.last == censoredString.last,
         leftStack[(leftStack.endIndex - censoredString.count)...] == censoredString {
        leftStack.removeLast(censoredString.count)
      }
    }

    return String(leftStack)
  }
}
