//
//  ArrayComparison.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 5/22/24.
//

import Foundation

/// Checks if two 2D arrays contain the same elements regardless of order.
///
/// This function compares two 2D arrays and returns true if they contain the
/// same elements, regardless of the order of the elements within the inner arrays
/// or the order of the inner arrays themselves. Each inner array is treated as a set
/// of elements for the purpose of comparison.
///
/// - Parameters:
///   - lhs: The first 2D array to compare.
///   - rhs: The second 2D array to compare.
/// - Returns: A Boolean value indicating whether the two 2D arrays are equivalent.
func areEquivalent<T: Hashable>(_ lhs: [[T]], _ rhs: [[T]]) -> Bool {
  let lhsSet = lhs.map { Set($0) }
  let rhsSet = rhs.map { Set($0) }
  return Set(lhsSet) == Set(rhsSet)
}

/// Checks if two 1D arrays contain the same elements regardless of order.
///
/// This function compares two 1D arrays and returns true if they contain the
/// same elements, regardless of the order of the elements.
///
/// - Parameters:
///   - lhs: The first 1D array to compare.
///   - rhs: The second 1D array to compare.
/// - Returns: A Boolean value indicating whether the two 1D arrays are equivalent.
func areEquivalent<T: Comparable>(_ lhs: [T], _ rhs: [T]) -> Bool {
  lhs.sorted() == rhs.sorted()
}
