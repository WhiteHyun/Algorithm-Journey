//
//  3606. Coupon Code Validator.swift
//  https://leetcode.com/problems/coupon-code-validator/description/
//  Algorithm
//
//  Created by 홍승현 on 2025/12/13.
//

private struct Coupon: Comparable {
  private static let sortedOrders = ["electronics", "grocery", "pharmacy", "restaurant"]
  static func < (lhs: Coupon, rhs: Coupon) -> Bool {
    let lhsIndex = sortedOrders.firstIndex(of: lhs.businessLine) ?? sortedOrders.endIndex
    let rhsIndex = sortedOrders.firstIndex(of: rhs.businessLine) ?? sortedOrders.endIndex
    if lhsIndex == rhsIndex {
      return lhs.code < rhs.code
    } else {
      return lhsIndex < rhsIndex
    }
  }

  let code: String
  let businessLine: String
  let isActive: Bool
}

final class LeetCode3606 {
  func validateCoupons(_ code: [String], _ businessLine: [String], _ isActive: [Bool]) -> [String] {
    var coupons = [Coupon]()
    for i in code.indices {
      coupons.append(Coupon(code: code[i], businessLine: businessLine[i], isActive: isActive[i]))
    }
    let validBusinessLines: Set<String> = ["electronics", "grocery", "pharmacy", "restaurant"]
    
    coupons.removeAll { coupon in
      // Remove if any of these conditions are true (invalid coupons)
      !coupon.isActive ||
      !validBusinessLines.contains(coupon.businessLine) ||
      coupon.code.isEmpty ||
      !coupon.code.allSatisfy { $0.isLetter || $0.isNumber || $0 == "_" }
    }

    return coupons.sorted().map(\.code)
  }
}
