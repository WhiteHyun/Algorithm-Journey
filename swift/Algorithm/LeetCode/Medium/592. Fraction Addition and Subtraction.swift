//
//  592. Fraction Addition and Subtraction.swift
//  https://leetcode.com/problems/fraction-addition-and-subtraction/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/24.
//

import Foundation

private func gcd(_ lhs: Int, _ rhs: Int) -> Int {
  var temp: Int
  var lhs = lhs
  var rhs = rhs
  while rhs != 0 {
    temp = lhs % rhs
    lhs = rhs
    rhs = temp
  }

  return lhs
}

private func lcm(_ lhs: Int, _ rhs: Int) -> Int {
  lhs * rhs / gcd(lhs, rhs)
}

// MARK: - Fraction

private struct Fraction: CustomStringConvertible {
  let numerator: Int
  let denominator: Int

  var description: String { "\(numerator)/\(denominator)" }

  static func + (lhs: Fraction, rhs: Fraction) -> Fraction {
    let _lcm = lcm(lhs.denominator, rhs.denominator)

    let added = Fraction(numerator: _lcm / lhs.denominator * lhs.numerator + _lcm / rhs.denominator * rhs.numerator, denominator: _lcm)

    if added.numerator == 0 { return .init(numerator: 0, denominator: 1) }

    let _gcd = gcd(abs(added.denominator), abs(added.numerator))

    return .init(numerator: added.numerator / _gcd, denominator: added.denominator / _gcd)
  }

  static func - (lhs: Fraction, rhs: Fraction) -> Fraction {
    let newRHS = Fraction(numerator: -rhs.numerator, denominator: rhs.denominator)
    return lhs + newRHS
  }

  static func += (lhs: inout Fraction, rhs: Fraction) {
    lhs = lhs + rhs
  }

  static func -= (lhs: inout Fraction, rhs: Fraction) {
    lhs = lhs - rhs
  }
}

// MARK: - LeetCode592

final class LeetCode592 {
  func fractionAddition(_ expression: String) -> String {
//    var splitedArray = expression.split(separator: /[+-]/)
    var splitedArray = expression.components(separatedBy: CharacterSet(charactersIn: "+-"))
    if splitedArray.first!.isEmpty {
      splitedArray = Array(splitedArray.dropFirst())
    }
    if !Set("0123456789").contains(expression.first!) {
      splitedArray[0] = "-\(splitedArray[0])"
    }
    let operands = splitedArray
      .map {
        let array = $0.split(separator: "/")
        return Fraction(numerator: Int(array[0])!, denominator: Int(array[1])!)
      }

//    let operators = expression[1...].matches(of: /(?<operator>[+-])/).map(\.operator).map(String.init)
    var operators: [String] = []

    for char in expression.dropFirst() {
      if char == "+" || char == "-" {
        operators.append(String(char))
      }
    }

    var result: Fraction = operands.first!

    for index in 1 ..< operands.count {
      if operators[index - 1] == "+" {
        result += operands[index]
      } else {
        result -= operands[index]
      }
    }

    return result.description
  }
}
