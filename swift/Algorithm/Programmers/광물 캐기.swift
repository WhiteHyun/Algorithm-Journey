//
//  광물 캐기
//  https://school.programmers.co.kr/learn/courses/30/lessons/172927
//
//  Created by whitehyun on 2023/05/11.
//

import Foundation

final class ProgrammersSolution172927 {
  func solution(_ picks: [Int], _ minerals: [String]) -> Int {
    let pickaxeUsage = picks.reduce(0, +) * 5
    let minerals = Array(minerals.prefix(pickaxeUsage))

    var investedMinerals = [[Int]](repeating: [0, 0, 0], count: 10) // 광물 최대 50개 / 5 = 10
    for index in 0 ..< minerals.count {
      if minerals[index] == "diamond" { investedMinerals[index / 5][0] += 1 }
      if minerals[index] == "iron" { investedMinerals[index / 5][1] += 1 }
      if minerals[index] == "stone" { investedMinerals[index / 5][2] += 1 }
    }

    investedMinerals.sort { ($0[0], $0[1], $0[2]) > ($1[0], $1[1], $1[2]) }

    var fatigue = 0
    var pickaxes = picks

    for array in investedMinerals {
      let (diamond, iron, stone) = (array[0], array[1], array[2])

      // 다이아몬드 곡괭이
      if pickaxes[0] > 0 {
        fatigue += diamond + iron + stone
        pickaxes[0] -= 1
      } else if pickaxes[1] > 0 {
        fatigue += diamond * 5 + iron + stone
        pickaxes[1] -= 1
      } else {
        fatigue += diamond * 25 + iron * 5 + stone
        pickaxes[2] -= 1
      }
    }

    return fatigue
  }
}
