//
//  987. Reveal Cards In Increasing Order
//  https://leetcode.com/problems/reveal-cards-in-increasing-order/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/16.
//

import Foundation

final class LeetCodeSolution987 {
  func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {
    let sortedDeck = deck.sorted()
    var answer: [Int] = [sortedDeck.last!]
    for element in sortedDeck.dropLast().reversed() {
      if let poppedElement = answer.popLast() {
        answer = [element, poppedElement] + answer
      }
    }

    return answer
  }
}
