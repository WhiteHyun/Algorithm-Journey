//
//  Utils.swift
//  Algorithm
//
//  Created by 홍승현 on 2/20/24.
//

import Foundation

extension Array {
  subscript(safe index: Int) -> Element? {
    indices ~= index ? self[index] : nil
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
