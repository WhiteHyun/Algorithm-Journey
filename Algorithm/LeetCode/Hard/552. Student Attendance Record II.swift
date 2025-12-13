//
//  552. Student Attendance Record II.swift
//  https://leetcode.com/problems/student-attendance-record-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/26.
//

import Foundation

/// LeetCode 552번 문제
///
/// DP 문제같은데 접근 방법을 잘 모르겠다.
/// 우선 첫 번째 풀이법으로 O(2^n)인 백트래킹을 활용했으나 `Time Limit Exceeded`가 나타남. 그리고 콜스택으로 인한 EXC_BAD_ACCESS 오류도 발생
/// DP로 풀이해야함
/// 우선 총 경우의 수를 T, A로 가능한 경우의 수를 A, P로 가능한 경우의 수를 P, L로 가능한 경우의 수를 L로 하면
/// T(n) = P(n) + L(n) + A(n),
/// P(n)은 쉽게 구할 수 있다, 앞에 무엇이 오든 전부 가능하기 때문, (LP, AP, PP)
/// 즉 P(n) = P(n-1) + L(n-1) + A(n-1)이다.
/// L(n)은 3번 이상 연속되면 안되므로, 아래와 같은 수를 생각해볼 수 있다.
/// ...PL (가능)
/// ...AL (가능)
/// 그리고 n-1의 L을 보는 것이 아니라 n-1이 L일 때 n-2가 나오는 것을 봐야한다. 즉
/// ..PLL (가능)
/// ..ALL (가능)
/// ..LLL (불가능) <-- 룰과 맞지 않음
/// 그러므로 L(n) = P(n-1) + A(n-1) + P(n-2) + L(n-2)가 된다.
/// A(n)은 좀 더 까다롭다.
/// A는 두 번 이상 나오면 안되므로, 무조건 A는 하나만 있어야 한다.
/// 그 말은 즉슨 A가 없는 n -1 길이의 P와 A가 없는 n - 1 길이의 L을 합친 것이 A(n)이다.
/// A(n) = noA_P(n-1) + noA_L(n-1)
/// noA_P(n)은 어떻게 구하는가?
/// noA_P(n) = noA_P(n-1) + noA_L(n-1)이다.
/// noA_L(n)은?
/// noA_L(n) = noA_P(n-1) + noA_P(n-2) 이다. L(n) 참고
/// 이렇게 하면 모든 경우의 수를 구할 수 있다.
final class LeetCode552 {
  func checkRecord(_ n: Int) -> Int {
    if n == 1 { return 3 }
    if n == 2 { return 8 }
    let modularOperand = 1_000_000_007
    var dp: [[Int]] = .init(repeating: .init(repeating: 0, count: 5), count: 3)
    // P(n), L(n), A(n), noA_P(n), noA_L(n) 순으로 진행
    dp[0] = [1, 1, 1, 1, 1]
    dp[1] = [3, 3, 2, 2, 2]

    @inline(__always)
    func P(_ n: Int) -> Int {
      dp[n][0]
    }

    @inline(__always)
    func L(_ n: Int) -> Int {
      dp[n][1]
    }

    @inline(__always)
    func A(_ n: Int) -> Int {
      dp[n][2]
    }

    @inline(__always)
    func noA_P(_ n: Int) -> Int {
      dp[n][3]
    }

    @inline(__always)
    func noA_L(_ n: Int) -> Int {
      dp[n][4]
    }

    for _ in 0 ..< n - 2 {
      // P(n) = P(n-1) + L(n-1) + A(n-1)
      dp[2][0] = (P(1) + L(1) + A(1)) % modularOperand

      // L(n) = P(n-1) + A(n-1) + P(n-2) + A(n-2)
      dp[2][1] = (P(1) + A(1) + P(0) + A(0)) % modularOperand

      // A(n) = noA_P(n-1) + noA_L(n-1)
      dp[2][2] = (noA_P(1) + noA_L(1)) % modularOperand

      // noA_P(n) = noA_P(n-1) + noA_L(n-1)
      dp[2][3] = (noA_P(1) + noA_L(1)) % modularOperand

      // noA_L(n) = noA_P(n-1) + noA_P(n-2)
      dp[2][4] = (noA_P(1) + noA_P(0)) % modularOperand

      dp[0] = dp[1]
      dp[1] = dp[2]
    }

    return (dp.last![0] + dp.last![1] + dp.last![2]) % modularOperand
  }
}
