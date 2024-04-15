//
//  Deque.swift
//  Algorithm
//
//  Created by 홍승현 on 2023/02/17.
//

import Foundation

// MARK: - Deque

struct Deque<Element: Equatable> {
  private var frontQueue = [Element]()
  private var backQueue = [Element]()

  var isEmpty: Bool {
    frontQueue.isEmpty && backQueue.isEmpty
  }

  var count: Int {
    frontQueue.count + backQueue.count
  }

  mutating func appendLeft(_ element: Element) {
    frontQueue.append(element)
  }

  mutating func append(_ element: Element) {
    backQueue.append(element)
  }

  mutating func popLeft() -> Element? {
    if !frontQueue.isEmpty {
      return frontQueue.popLast()
    }
    backQueue.reverse()
    let value = backQueue.popLast()
    backQueue.reverse()
    return value
  }

  mutating func pop() -> Element? {
    if !backQueue.isEmpty {
      return backQueue.popLast()
    }
    frontQueue.reverse()
    let value = frontQueue.popLast()
    frontQueue.reverse()
    return value
  }

  func contains(_ element: Element) -> Bool {
    frontQueue.contains(element) || backQueue.contains(element)
  }

  mutating func removeAll() {
    frontQueue.removeAll()
    backQueue.removeAll()
  }
}

// MARK: CustomStringConvertible

extension Deque: CustomStringConvertible {
  var description: String {
    "\(frontQueue), \(backQueue)"
  }
}

// MARK: ExpressibleByArrayLiteral

extension Deque: ExpressibleByArrayLiteral {
  init(arrayLiteral elements: Element...) {
    backQueue = elements
  }
}
