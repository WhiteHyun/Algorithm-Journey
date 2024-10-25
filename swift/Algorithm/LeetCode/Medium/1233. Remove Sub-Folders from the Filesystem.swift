//
//  1233. Remove Sub-Folders from the Filesystem.swift
//  https://leetcode.com/problems/remove-sub-folders-from-the-filesystem/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/25.
//

final class LeetCode1233 {
  final class Trie {
    var count: Int = 0
    var children: [String: Trie]

    init(children: [String: Trie] = [:]) {
      self.children = children
    }
  }

  func removeSubfolders(_ folders: [String]) -> [String] {
    let root = Trie()

    for folder in folders {
      var node = root
      for element in folder.components(separatedBy: "/") where !element.isEmpty {
        if node.children[element] == nil {
          node.children[element] = .init()
        }
        node = node.children[element]!
      }
      node.count += 1
    }

    var answer: [String] = []

    var stack: [(Trie, String)] = root.children.map { ($1, "/\($0)") }
    wholeLoop: while let (node, folderString) = stack.popLast() {
      if node.count == 1 {
        answer.append(folderString)
        continue
      }

      for (key, children) in node.children {
        stack.append((children, "\(folderString)/\(key)"))
      }
    }

    return answer
  }
}
