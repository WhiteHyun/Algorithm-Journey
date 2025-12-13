//
//  LeetCode432Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/09/29.
//

import Testing

@Suite("432. All O`one Data Structure", .tags(.hashTable, .linkedList, .design, .doublyLinkedList))
struct LeetCode432Tests {
  @Test
  func example1() {
    let allOne = LeetCode432.AllOne()
    allOne.inc("hello")
    allOne.inc("hello")
    #expect(allOne.getMaxKey() == "hello", #"Expected '"hello"', but got '\#(allOne.getMaxKey())'"#)
    #expect(allOne.getMinKey() == "hello", #"Expected '"hello"', but got '\#(allOne.getMinKey())'"#)
    allOne.inc("leet")
    #expect(allOne.getMaxKey() == "hello", #"Expected '"hello"', but got '\#(allOne.getMaxKey())'"#)
    #expect(allOne.getMinKey() == "leet", #"Expected '"leet"', but got '\#(allOne.getMinKey())'"#)
  }

  @Test
  func example2() {
    let allOne = LeetCode432.AllOne()
    allOne.inc("hello")
    allOne.inc("goodbye")
    allOne.inc("hello")
    allOne.inc("hello")
    #expect(allOne.getMaxKey() == "hello", #"Expected '"hello"', but got '\#(allOne.getMaxKey())'"#)
    allOne.inc("leet")
    allOne.inc("code")
    allOne.inc("leet")
    allOne.dec("hello")
    allOne.inc("leet")
    allOne.inc("code")
    allOne.inc("code")
    #expect(allOne.getMaxKey() == "leet", #"Expected '"leet"', but got '\#(allOne.getMaxKey())'"#)
  }

  @Test
  func example3() {
    let allOne = LeetCode432.AllOne()
    allOne.inc("a")
    allOne.inc("b")
    allOne.inc("b")
    allOne.inc("b")
    allOne.inc("b")
    allOne.dec("b")
    allOne.dec("b")
    #expect(allOne.getMaxKey() == "b", #"Expected '"b"', but got '\#(allOne.getMaxKey())'"#)
    #expect(allOne.getMinKey() == "a", #"Expected '"a"', but got '\#(allOne.getMinKey())'"#)
  }

  @Test
  func example4() {
    let allOne = LeetCode432.AllOne()
    allOne.inc("hello")
    allOne.inc("world")
    allOne.inc("leet")
    allOne.inc("code")
    allOne.inc("ds")
    allOne.inc("leet")
    #expect(allOne.getMaxKey() == "leet", #"Expected '"leet"', but got '\#(allOne.getMaxKey())'"#)
    allOne.inc("ds")
    allOne.dec("leet")
    #expect(allOne.getMaxKey() == "ds", #"Expected '"ds"', but got '\#(allOne.getMaxKey())'"#)
    allOne.dec("ds")
    allOne.inc("hello")
    #expect(allOne.getMaxKey() == "hello", #"Expected '"hello"', but got '\#(allOne.getMaxKey())'"#)
  }

  @Test
  func example5() {
    let allOne = LeetCode432.AllOne()
    allOne.inc("a")
    allOne.inc("b")
    allOne.inc("c")
    allOne.inc("d")
    allOne.inc("a")
    allOne.inc("b")
    allOne.inc("c")
    allOne.inc("d")
    allOne.inc("c")
    allOne.inc("d")
    allOne.inc("d")
    allOne.inc("a")
    #expect(allOne.getMinKey() == "b", #"Expected '"b"', but got '\#(allOne.getMinKey())'"#)
  }
}
