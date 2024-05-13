//
//  Interval.swift
//  Algorithm
//
//  Created by 홍승현 on 5/12/24.
//

import Foundation

// MARK: - Interval

final class Interval {
  var start: Int
  var end: Int

  init(_ a: Int = 0, _ b: Int = 0) {
    start = a
    end = b
  }
}

// MARK: CustomStringConvertible

extension Interval: CustomStringConvertible {
  var description: String {
    "\(start)-\(end)"
  }
}
