//
//  241. Different Ways to Add Parentheses.swift
//  https://leetcode.com/problems/different-ways-to-add-parentheses/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/19.
//

final class LeetCode241 {
  func diffWaysToCompute(_ expression: String) -> [Int] {
    var result = [Int]()
    
    // 기본 케이스: expression이 단일 숫자인 경우
    if let number = Int(expression) {
      return [number]
    }
    
    for (index, char) in expression.enumerated() where char == "+" || char == "-" || char == "*" {
      
      let left = diffWaysToCompute(String(expression.prefix(index)))
      let right = diffWaysToCompute(String(expression.suffix(from: expression.index(expression.startIndex, offsetBy: index + 1))))
      
      for l in left {
        for r in right {
          switch char {
          case "+":
            result.append(l + r)
          case "-":
            result.append(l - r)
          case "*":
            result.append(l * r)
          default:
            break
          }
        }
      }
      
    }
    
    return result
  }
}
