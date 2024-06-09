//
//  258709. Pick a die.swift
//  https://school.programmers.co.kr/learn/courses/30/lessons/258709?language=swift
//  Algorithm
//
//  Created by 홍승현 on 2024/06/09.
//

import Foundation

final class Programmers258709 {
  func combinations(_ n: Int, _ index: Int, _ result: [Int]) -> [[Int]] {
    // n / 2 만큼 가져가야 함
    if result.count == n >> 1 {
      return [result]
    }

    var temp: [[Int]] = []
    for i in index ..< n {
      temp += combinations(n, i + 1, result + [i])
    }

    return temp
  }

  func numberOfWinsAndLosesInMatches(_ dice: [[Int]], _ selectedDice: [Int], _ opponentSelectedDice: [Int]) -> (win: Int, lose: Int) {
    // 2-1. 각 주사위마다 합을 구함

    var myDiceSum: [Int] = []
    var opponentDiceSum: [Int] = []
    func backTrack(_ index: Int, _ mySum: Int, _ opponentSum: Int) {
      if index == dice.count >> 1 {
        myDiceSum.append(mySum)
        opponentDiceSum.append(opponentSum)
        return
      }

      for i in 0 ..< 6 {
        backTrack(index + 1, mySum + dice[selectedDice[index]][i], opponentSum + dice[opponentSelectedDice[index]][i])
      }
    }

    backTrack(0, 0, 0)

    // 2-2. 이진탐색하여 이기는 경우의 수와 지는 경우의 수를 구함
    myDiceSum.sort()
    opponentDiceSum.sort()

    var win = 0
    var lose = 0

    func binarySearch(_ array: [Int], _ value: Int) -> Int {
      var left = 0
      var right = array.count - 1
      while left <= right {
        let mid = (left + right) >> 1
        if array[mid] <= value {
          left = mid + 1
        } else {
          right = mid - 1
        }
      }
      return left
    }

    for mySum in myDiceSum {
      let wins = binarySearch(opponentDiceSum, mySum - 1)
      let losses = opponentDiceSum.count - binarySearch(opponentDiceSum, mySum)

      win += wins
      lose += losses
    }

    return (win, lose)
  }

  func solution(_ dice: [[Int]]) -> [Int] {
    var answer: [Int] = []
    var maxWin = 0

    // 1. 경우의 가지 수(조합)를 구함
    let numberOfCases = combinations(dice.count, 0, [])

    // 2. 선택한 주사위에 대해 모든 경우의 수를 구하여 승, 무, 패 비율을 구함
    for index in 0 ..< numberOfCases.count >> 1 {
      let (win, lose) = numberOfWinsAndLosesInMatches(dice, numberOfCases[index], numberOfCases[numberOfCases.count - index - 1])
      // 3. 최대 확률에 대해 저장
      if maxWin < win {
        answer = numberOfCases[index]
        maxWin = win
      }
      if maxWin < lose {
        answer = numberOfCases[numberOfCases.count - index - 1]
        maxWin = lose
      }
    }

    // 4. 리턴
    return answer.sorted().map { $0 + 1 }
  }
}
