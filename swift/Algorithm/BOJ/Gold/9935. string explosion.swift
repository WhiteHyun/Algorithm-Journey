//
//  9935. string explosion
//  https://www.acmicpc.net/problem/1759
//  Algorithm
//
//  Created by 홍승현 on 2024/04/22.
//

import Foundation

final class BOJ9935 {
  func solution(string: String, bomb: String) -> String {
    var stack: [Character] = []
    let bomb = ArraySlice(bomb)

    for element in string {
      stack.append(element)
      if stack.count >= bomb.count, element == bomb.last, stack[(stack.endIndex - bomb.count)...] == bomb {
        stack.removeLast(bomb.count)
      }
    }

    return stack.isEmpty ? "FRULA" : String(stack)
  }
}
