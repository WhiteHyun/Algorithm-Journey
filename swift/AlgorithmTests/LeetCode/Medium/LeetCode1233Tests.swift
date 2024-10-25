//
//  LeetCode1233Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/25.
//

import Testing

@Suite("1233. Remove Sub-Folders from the Filesystem", .tags(.array, .string, .depthFirstSearch, .trie))
struct LeetCode1233Tests {
  private let problem = LeetCode1233()

  @Test
  func example1() {
    let result = problem.removeSubfolders(["/a", "/a/b", "/c/d", "/c/d/e", "/c/f"])
    #expect(areEquivalent(result, ["/a", "/c/d", "/c/f"]), #"Expected '["/a", "/c/d", "/c/f"]', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.removeSubfolders(["/a", "/a/b/c", "/a/b/d"])
    #expect(areEquivalent(result, ["/a"]), #"Expected '["/a"]', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.removeSubfolders(["/a/b/c", "/a/b/ca", "/a/b/d"])
    #expect(areEquivalent(result, ["/a/b/c", "/a/b/ca", "/a/b/d"]), #"Expected '["/a/b/c", "/a/b/ca", "/a/b/d"]', but got '\#(result)'"#)
  }
}
