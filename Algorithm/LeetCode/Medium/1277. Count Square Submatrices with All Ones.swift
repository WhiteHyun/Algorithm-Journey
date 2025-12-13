//
//  1277. Count Square Submatrices with All Ones.swift
//  https://leetcode.com/problems/count-square-submatrices-with-all-ones/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/27.
//

// MARK: - LeetCode1277

/// ```
/// [1 1 1]
/// [1 1 1]
/// [1 1 1]
/// ```
/// (1,1) 위치(중앙)에서 2x2 정사각형이 가능하려면:
///
/// 1. (0,1)에서 왼쪽으로 1x1 정사각형이 가능해야 함
/// 2. (1,0)에서 위쪽으로 1x1 정사각형이 가능해야 함
/// 3. (0,0)에서 대각선으로 1x1 정사각형이 가능해야 함
///
/// 이를 DP 점화식으로 표현하면:
/// ```swift
/// if matrix[i][j] == 1 {
///   dp[i][j] = min(dp[i-1][j], dp[i][j-1], dp[i-1][j-1]) + 1
/// }
/// ```
/// `dp[i][j]`는 `(i,j)` 위치에서 만들 수 있는 가장 큰 정사각형의 크기를 의미
final class LeetCode1277 {
  func countSquares(_ matrix: [[Int]]) -> Int {
    let m = matrix.count
    let n = matrix[0].count
    var dp: [Int] = .init(repeating: 0, count: n)
    var result = 0
    var prevCorner = 0 // dp[i-1][j-1] 값을 저장

    for i in 0 ..< m {
      for j in 0 ..< n {
        let temp = dp[j]
        if j == 0 {
          dp[j] = matrix[i][j]
        } else if matrix[i][j] == 1 {
          dp[j] = min(dp[j], dp[j - 1], prevCorner) + 1
        } else {
          dp[j] = 0
        }

        prevCorner = temp
        result += dp[j]
      }
    }

    return result
  }
}
