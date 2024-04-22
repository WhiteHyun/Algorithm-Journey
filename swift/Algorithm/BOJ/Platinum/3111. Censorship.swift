//
//  3111. Censorship
//  https://www.acmicpc.net/problem/1759
//  Algorithm
//
//  Created by 홍승현 on 2024/04/22.
//

import Foundation

// MARK: - Node

private final class Node<T> {
  var value: T
  var previous: Node<T>?
  var next: Node<T>?

  init(value: T) {
    self.value = value
  }
}

// MARK: - Deque

private final class Deque<T> {
  private var head: Node<T>?
  private var tail: Node<T>?
  private(set) var count: Int = 0

  var isEmpty: Bool {
    count == 0
  }

  func append(_ value: T) {
    let newNode = Node(value: value)

    if let tail {
      newNode.previous = tail
      tail.next = newNode
    } else {
      head = newNode
    }

    tail = newNode
    count += 1
  }

  func popFirst() -> T? {
    guard let head else {
      return nil
    }

    let value = head.value

    if let nextNode = head.next {
      nextNode.previous = nil
      self.head = nextNode
    } else {
      self.head = nil
      tail = nil
    }

    count -= 1
    return value
  }

  func popLast() -> T? {
    guard let tail else {
      return nil
    }

    let value = tail.value

    if let previousNode = tail.previous {
      previousNode.next = nil
      self.tail = previousNode
    } else {
      head = nil
      self.tail = nil
    }

    count -= 1
    return value
  }
}

// MARK: - CensorFlag

enum CensorFlag {
  case left
  case right

  mutating func toggle() {
    self = self == .left ? .right : .left
  }
}

// MARK: - BOJSolution3111

final class BOJSolution3111 {
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
