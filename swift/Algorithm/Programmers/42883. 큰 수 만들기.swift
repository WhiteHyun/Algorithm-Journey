//
//  42883. 큰 수 만들기.swift
//  https://school.programmers.co.kr/learn/courses/30/lessons/42883?language=swift
//  Algorithm
//
//  Created by 홍승현 on 2024/04/20.
//

import Foundation

final class ProgrammersSolution42883 {
  func solution(_ number: String, _ k: Int) -> String {
    var count = k
    var stack: [Character] = []
    for element in number {
      while count > 0, stack.isEmpty == false, stack.last! < element {
        stack.removeLast()
        count -= 1
      }
      stack.append(element)
    }

    return stack[0 ..< stack.count - count].map(String.init).joined()
  }
}
