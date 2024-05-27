//
//  13913. Hide and Seek 4.swift
//  https://www.acmicpc.net/problem/13913
//  Algorithm
//
//  Created by 홍승현 on 2024/05/27.
//

final class BOJ13913 {
  func shortestTimeToFindBrother(_ start: Int, _ target: Int, _ array: [Int] = []) -> (shortest: Int, path: [Int]) {
    // 수빈이가 큰 경우는 한 칸 씩 빼는 경우 밖에 없음
    if start >= target {
      return (start - target, array + Array(target ... start))
    }

    // 수빈이가 0에 있는 경우 무한루프 방지
    if target == 1 {
      return (1, array + [1, 0])
    }

    // 동생의 위치가 홀수인 경우
    // 이전과 다음 위치에서 동생의 위치로 이동하는 것이므로 각 위치 가운데 최소가 되는 값 + 1을 return
    if target & 1 == 1 {
      let a = shortestTimeToFindBrother(start, target - 1, array + [target])
      let b = shortestTimeToFindBrother(start, target + 1, array + [target])
      return a.shortest > b.shortest ? (1 + b.shortest, b.path) : (1 + a.shortest, a.path)
    }

    // 동생의 위치가 2로 나누어 떨어질 때
    // 수빈이 순간이동으로 이동했을 때와 한 칸씩 이동한 시간 중 최소가 되는 값을 return
    let a = shortestTimeToFindBrother(start, target >> 1, array + [target])
    return a.shortest < target - start ? (1 + a.shortest, a.path) : (target - start, array + Array(start ... target).reversed())
  }
}
