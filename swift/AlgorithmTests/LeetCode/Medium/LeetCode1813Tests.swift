//
//  LeetCode1813Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/10/06.
//

import Testing

@Suite("1813. Sentence Similarity III", .tags(.array, .twoPointers, .string))
struct LeetCode1813Tests {
  private let problem = LeetCode1813()

  @Test
  func example1() {
    let result = problem.areSentencesSimilar("My name is Haley", "My Haley")
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.areSentencesSimilar("of", "A lot of words")
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.areSentencesSimilar("Eating right now", "Eating")
    #expect(result == true, #"Expected 'true', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.areSentencesSimilar("Db C", "C Db")
    #expect(result == false, #"Expected 'false', but got '\#(result)'"#)
  }
}
