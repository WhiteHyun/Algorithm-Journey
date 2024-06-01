//
//  347. Top K Frequent Elements
//  https://leetcode.com/problems/top-k-frequent-elements/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/16.
//

import Foundation

/// LeetCode 347
///
/// Dictionary로 카운팅 한 뒤, 내림차순 정렬 후 k만큼의 위치를 가져오는 식으로 구현한 것과
/// radix sort를 사용한 것의 시간차는 유의미하지 않았음. 약간의 상수 시간 포함하면 서로 비슷하거나 radix sort가 좀 더 느린 것 같다.
final class LeetCode347 {
  func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    let n = nums.count
    let counter = Dictionary(nums.map { ($0, 1) }, uniquingKeysWith: +)
    var buckets: [[Int]] = .init(repeating: [], count: n + 1)
    var answer: [Int] = []

    for (num, count) in counter {
      buckets[count].append(num)
    }

    for i in stride(from: n, to: 0, by: -1) {
      if answer.count >= k { break }

      if !buckets[i].isEmpty {
        answer.append(contentsOf: buckets[i])
      }
    }

    return answer
  }
}
