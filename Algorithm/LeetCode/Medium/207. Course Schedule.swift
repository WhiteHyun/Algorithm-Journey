//
//  207. Course Schedule.swift
//  https://leetcode.com/problems/course-schedule/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/30.
//

final class LeetCode207 {
  func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
    var graph: [Int: [Int]] = [:]
    var visited: [Int: Bool] = [:]

    // 그래프 구성
    for prereq in prerequisites {
      let course = prereq[0]
      let prerequisite = prereq[1]
      graph[course, default: []].append(prerequisite)
    }

    func dfs(_ course: Int) -> Bool {
      if visited[course] == true { return false }
      if visited[course] == false { return true }

      visited[course] = true

      if let prerequisites = graph[course] {
        for prereq in prerequisites {
          if !dfs(prereq) { return false }
        }
      }

      visited[course] = false
      return true
    }

    for course in 0 ..< numCourses {
      if !dfs(course) { return false }
    }

    return true
  }
}
