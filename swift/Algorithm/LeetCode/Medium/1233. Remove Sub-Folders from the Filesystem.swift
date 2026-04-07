//
//  1233. Remove Sub-Folders from the Filesystem.swift
//  https://leetcode.com/problems/remove-sub-folders-from-the-filesystem/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/25.
//

final class LeetCode1233 {
  func removeSubfolders(_ folders: [String]) -> [String] {
    var answer: [String] = []
    let sortedFolders = folders.sorted()

    if let firstFolder = sortedFolders.first {
      answer.append(firstFolder)
    }

    for index in 1 ..< sortedFolders.count {
      if let lastFolderOfAnswer = answer.last,
         sortedFolders[index].hasPrefix(lastFolderOfAnswer + "/") == false {
        answer.append(sortedFolders[index])
      }
    }

    return answer
  }
}
