//
//  1894. 4th dot.swift
//  https://www.acmicpc.net/problem/1894
//  Algorithm
//
//  Created by 홍승현 on 2024/04/24.
//

import Foundation

// MARK: - Point

private struct Point: Equatable {
  let x: Double
  let y: Double

  @inlinable static func + (lhs: Self, rhs: Self) -> Self {
    .init(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
  }

  @inlinable static func - (lhs: Self, rhs: Self) -> Self {
    .init(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
  }
}

// MARK: - BOJ1894

final class BOJ1894 {
  func solution(_ points: [Double]) -> String {
    let dotA = Point(x: points[0], y: points[1])
    let dotB = Point(x: points[2], y: points[3])
    let dotC = Point(x: points[4], y: points[5])
    let dotD = Point(x: points[6], y: points[7])

    let answer: Point = if dotA == dotC {
      dotB + dotD - dotA
    } else if dotA == dotD {
      dotB + dotC - dotA
    } else if dotB == dotC {
      dotA + dotD - dotB
    } else {
      dotA + dotC - dotB
    }

    return .init(format: "%.3f %.3f", answer.x, answer.y)
  }
}
