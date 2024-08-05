//
//  Utils.swift
//  Algorithm
//
//  Created by 홍승현 on 2/20/24.
//

import Foundation

extension Array {
  subscript(safe index: Index) -> Element? {
    indices ~= index ? self[index] : nil
  }
}

extension String {
  subscript(_ index: Int) -> Character {
    self[self.index(startIndex, offsetBy: index)]
  }

  subscript(_ range: ClosedRange<Int>) -> Substring {
    self[index(startIndex, offsetBy: range.lowerBound) ..< index(after: index(startIndex, offsetBy: range.upperBound))]
  }

  subscript(_ range: Range<Int>) -> Substring {
    self[index(startIndex, offsetBy: range.lowerBound) ..< index(startIndex, offsetBy: range.upperBound)]
  }

  subscript(_ range: PartialRangeThrough<Int>) -> Substring {
    self[startIndex ..< index(after: index(startIndex, offsetBy: range.upperBound))]
  }

  subscript(_ range: PartialRangeUpTo<Int>) -> Substring {
    self[startIndex ..< index(startIndex, offsetBy: range.upperBound)]
  }

  subscript(_ range: PartialRangeFrom<Int>) -> Substring {
    self[index(startIndex, offsetBy: range.lowerBound) ..< endIndex]
  }
}

func measureTimeUsingDate(label: String, operation: () -> Void) {
  let startTime = Date()
  operation()
  let diff = Date().timeIntervalSince(startTime)
  print("[\(label)]: Took \(diff) seconds")
}

func measureTimeUsingCFAbsoluteTime(label: String, operation: () -> Void) {
  let startTime = CFAbsoluteTimeGetCurrent()
  operation()
  let diff = CFAbsoluteTimeGetCurrent() - startTime
  print("[\(label)]: Took \(diff) seconds")
}

// MARK: - Memory

enum Memory {
  static func size(of value: inout some Any) -> Int {
    withUnsafeBytes(of: &value) { pointer in
      pointer.count
    }
  }

  static func stack(address: some Any) -> String {
    withUnsafePointer(to: address) { pointer in
      pointer.debugDescription
    }
  }

  static func heap(address: UnsafeRawPointer) -> String {
    String(format: "%018p", Int(bitPattern: address))
  }
}
