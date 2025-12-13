//
//  2491. Divide Players Into Teams of Equal Skill.swift
//  https://leetcode.com/problems/divide-players-into-teams-of-equal-skill/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/04.
//

final class LeetCode2491 {
  func dividePlayers(_ skill: [Int]) -> Int {
    let sortedSkills = skill.sorted()
    var sumSet: Set<Int> = []
    var sum = 0
    for index in 0 ..< skill.count >> 1 {
      sumSet.insert(sortedSkills[index] + sortedSkills[skill.count - index - 1])
      sum += sortedSkills[index] * sortedSkills[skill.count - index - 1]
    }

    guard sumSet.count == 1
    else {
      return -1
    }

    return sum
  }
}
