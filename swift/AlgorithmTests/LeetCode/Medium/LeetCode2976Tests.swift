//
//  LeetCode2976Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/07/28.
//

import Testing

@Suite("2976. Minimum Cost to Convert String I", .tags(.array, .string, .graph, .shortestPath))
struct LeetCode2976Tests {
  private let problem = LeetCode2976()

  @Test
  func example1() {
    let result = problem.minimumCost("abcd", "acbe", ["a", "b", "c", "c", "e", "d"], ["b", "c", "b", "e", "b", "e"], [2, 5, 5, 1, 2, 20])
    #expect(result == 28, #"Expected '28', but got '\#(result)'"#)
  }

  @Test
  func example2() {
    let result = problem.minimumCost("aaaa", "bbbb", ["a", "c"], ["c", "b"], [1, 2])
    #expect(result == 12, #"Expected '12', but got '\#(result)'"#)
  }

  @Test
  func example3() {
    let result = problem.minimumCost("abcd", "abce", ["a"], ["e"], [10000])
    #expect(result == -1, #"Expected '-1', but got '\#(result)'"#)
  }

  @Test
  func example4() {
    let result = problem.minimumCost("ahymwvveassnabpnivvlhwnymipzyywplahbppaeisazybzbuyveobnollbmlubwehounmhepwsyallupvhuawlvoszyiwlabulzhvmiulilmysvsezbhbylaowmbybpylozvnublnsyweapaauhehswollnmlbeoanennnuoybymnnyhlmmvivbhwmhnibspusezippnybyhyzzbypyamlsylhiinlmwveibnmwpspmnnlmpnzmapouposwowavimbhuaoosiewymbiuwaoesblyhpoebhapnaeiveiezznwzoowhmsbvoiziiymelohboohmvzishzviabwzuzoamysphamowvlwlmmoyoyzewuowbhupobwzzouhllszpsnyubnaheyaouozuzpelomhpwezevyuobbhnwnlyeyusoslenbolmeunaopvhanibpvvloiplhobipzbobsbsbbhpyvoslhwupwvhsyhizluziahamay", "iwevmnllzbiespsmeoeunnvzuymnymvoeyuyhozuminepwaezpeeayhualvhlboeewaboosplonuzheuziyymhbnywnwzyameyshvbhnzvvbeznniaswzslzbsasvbewzzzmvulvvhzmohzmyummypaeowusvlmlyvmvaizuvomvipbpwnbimppoymiesmymioeemzpbwbvuszpvbpwmnyvypyzemsniaavnmiphiyvimzoozuepbowbpvmpelahvupuwzlbbywvyusawobouslblvbpvluylnsiauiwzawiowsnmvawepielbavvpbmvylvlylzunmbnaesoimuvwsmybmnybbhwbyuimmoebpvwnpiyebzzuwhiovubuynyvybipbzsnuopuhpzosmnhlnlmnneumshwaiyyspbpbiaiovyyvomhanunieisazshvyubmbvnbpiwipmuzbymnozwzaaawenlwiowpsvleppzellhei", ["n", "s", "a", "s", "s", "b", "h", "l", "e", "n", "e", "w", "y", "m", "n", "e", "a", "n", "p", "n", "u", "i", "b", "m", "z", "s", "v", "o", "n", "n", "a", "o", "l", "p", "s", "v", "b", "h", "b", "s", "y", "i", "a", "v", "o", "p", "p", "l", "a", "p", "o", "e", "l", "a", "m", "h", "o", "v", "e", "s", "n", "w", "v", "w", "y", "n", "o", "o", "e", "e", "h", "h", "z", "z", "z", "s", "s", "z", "h", "y", "u", "i", "l", "y", "h", "u", "s", "e", "b", "b", "o", "h", "p", "l", "e", "n", "v", "l", "s", "h", "m", "z", "z", "h", "z", "b", "w", "u", "o", "b", "u", "m", "o", "b", "e", "n", "a", "v", "b", "b", "n", "i", "l", "h", "a", "p", "w", "p", "i", "u", "n", "b", "h", "b", "b", "n", "s", "v", "u", "n", "v", "v", "e", "h", "l", "s", "l", "o", "s", "o", "b", "i", "i", "n", "e", "h", "u", "i", "w", "w", "u", "b", "s", "z", "h", "b", "l", "e", "a", "o", "m", "z", "l", "n", "o", "v", "v", "e", "h", "e", "v", "e", "l", "i", "s", "s", "y", "b", "w", "o", "i", "s", "h", "b", "b", "y", "e", "y", "h", "o", "p", "s", "i", "p", "n", "l", "w", "y", "u", "a", "v", "y", "s", "l", "v", "w", "z", "l", "p", "m", "w", "s", "y", "b", "w", "z", "w", "n", "e", "s", "e", "e", "e", "s", "a", "n", "o", "y", "i", "y", "o", "e", "o", "e", "w", "n", "h", "s", "v", "l", "o", "m", "l", "e", "n", "p", "z", "u", "a", "z", "s", "n", "i", "y", "a", "y", "h", "i", "v", "z", "y", "b", "i", "p", "p", "z", "z", "n", "a", "w", "n", "e", "n", "p", "z", "s", "i", "a", "y", "b", "m", "w", "m", "b", "h", "n", "y", "v", "v", "n", "u", "l", "h", "u", "a", "o", "b", "y", "y", "h", "a", "l", "v", "s", "e", "y", "u", "l", "n", "l", "e", "m", "w", "h", "l", "z", "m", "l", "a", "l", "i", "s", "w", "p", "s", "v", "l", "n", "w", "m", "l", "b", "o", "b", "b", "y", "w", "l", "i", "w", "e", "l", "v", "n", "y", "w", "b", "y", "b", "l", "h", "z", "e", "e", "n", "z", "e", "i", "n", "i", "n", "u", "w", "o", "o", "y", "w", "w", "p", "u", "b", "s", "a", "i", "e", "v", "o", "n", "s", "z", "m", "z", "n", "p", "e", "z", "w", "w", "n", "i", "i", "n", "e", "w", "b", "e", "z", "y", "w", "a", "i", "u", "h", "w", "v", "s", "z", "e", "z", "b", "y", "i", "e", "z", "u", "u", "m", "a", "n", "v", "e", "s", "s", "o", "p", "y", "m", "v", "u", "p", "p", "z", "s", "m", "y", "b", "v", "v", "b", "h", "v", "z", "w", "p", "o", "h", "p", "z", "a", "y", "y", "p", "v", "p", "y", "l", "e", "l", "h", "a", "z", "y", "m", "s", "u", "l", "h", "l", "v", "v", "h", "m", "s", "n", "h", "p", "v", "e", "a", "p", "y", "y", "n", "z", "y", "y", "l", "v", "n", "n", "e", "y", "y", "z", "i", "z", "e", "s", "b", "m", "n", "y", "h", "w", "v", "m", "a", "s", "z", "v", "h", "a", "w", "e", "b", "w", "i", "b", "y", "s", "a", "w", "u", "b", "m", "i", "v", "p", "e", "p", "z", "s", "l", "l", "z", "h", "e", "y", "i", "v", "n", "m", "b", "n", "a", "l", "p", "z", "w", "h", "z", "z", "w", "e", "l", "l", "o", "w", "l", "n", "h", "y", "n", "p", "y", "l", "u", "w", "n", "n", "n", "m", "h", "h", "w", "l", "e", "z", "a", "a", "h", "u", "o", "u", "y", "n", "b", "z", "o", "h", "u", "h", "l", "n", "b", "a", "n", "s", "i", "n", "n", "n", "e", "n", "v", "o", "z", "i", "b", "n", "y", "b", "l", "m", "e", "l", "m", "z", "e", "s", "m", "z", "n", "z", "a", "e", "n", "z", "z", "y", "m", "l", "h", "p", "n", "i", "m", "p", "o", "m", "m", "w", "m", "n", "n", "y", "n", "b", "s", "o", "w", "e", "h", "w", "b", "e", "l", "b", "o", "b", "o", "u", "a", "m", "n", "s", "m", "u", "h", "a", "l", "h", "y", "s", "n", "o", "w", "o", "o", "u", "a", "m", "l", "a", "e", "l", "w", "n", "z", "a", "b", "o", "y", "m", "p", "p", "i", "u", "v", "z", "m", "w", "e", "e", "l", "a", "h", "w", "a", "s", "l", "p", "o", "v", "m", "u", "a", "n", "h", "m", "s", "w", "o", "e", "y", "w", "o", "i", "e", "v", "h", "z", "p", "l", "h", "z", "n", "s", "w", "e", "u", "e", "s", "i", "h", "b", "a", "y", "e", "m", "m", "b", "w", "n", "v", "n", "b", "p", "a", "s", "o", "h", "z", "o", "o", "u", "n", "h", "e", "b", "u", "u", "a", "o", "s", "s", "z", "l", "i", "v", "n", "h", "s", "z", "e", "s", "h", "y", "h", "l", "y", "y", "y", "z", "z", "b", "a", "u", "o", "y", "n", "l", "i", "y", "i", "h", "b", "n", "u", "i", "a", "z", "n", "e", "b", "a", "n", "h", "a", "a", "w", "b", "i", "u", "v", "m", "n", "b", "n", "v", "p", "u", "y", "i", "y", "b", "i", "w", "y", "h", "p", "n", "p", "i", "z", "v", "o", "e", "n", "o", "e", "e", "e", "s", "l", "p", "w", "i", "i", "i", "y", "a", "h", "z", "y", "p", "z", "o", "l", "w", "a", "l", "e", "h", "m", "l", "n", "w", "s", "p", "m", "y", "o", "w", "a", "o", "a", "n", "w", "y", "m", "e", "v", "v", "o", "n", "a", "b", "m", "b", "y", "s", "v", "o", "m", "u", "m", "b", "s", "h", "n", "a", "y", "l", "n", "z", "h", "w", "m", "b", "v", "e", "n", "e", "s", "l", "o", "m", "v", "n", "o", "b", "o", "b", "z", "a", "o", "s", "y", "u", "u", "v", "y", "i", "p", "m", "b", "y", "z", "n", "a", "v", "p", "w", "a", "n", "z", "z", "a", "e", "l", "y", "v", "n", "a", "h", "u", "o", "z", "m", "a", "o", "a", "e", "m", "y", "n", "m", "h", "o", "z", "n", "w", "o", "u", "e", "i", "l", "w", "e", "n", "a", "w", "v", "z", "e", "m", "w", "y", "m", "v", "n", "n", "m", "m", "y", "a", "w", "e", "y", "w", "h", "m", "i", "o", "w", "e", "e", "w", "p", "h", "w", "y", "m", "m", "n", "l", "i", "v", "z", "p", "s", "n", "y", "w", "z", "b", "z", "s", "h", "i", "n", "y", "y", "v", "z", "e", "v", "h", "e", "n", "z", "u", "z", "h", "o", "b", "u", "e", "y", "b", "s", "o", "w", "o", "p", "o", "h", "s", "o", "a", "v", "m", "s", "o", "p", "p", "h", "l", "b", "a", "v", "i", "m", "v", "p", "v", "i", "u", "h", "i", "e", "b", "e", "z", "w", "u", "l", "l", "l", "i", "s", "z", "e", "l", "n", "b", "l", "p", "a", "z", "b", "z", "v", "p", "v", "i", "l", "w", "o", "y", "i", "o", "p", "w", "a", "y", "p", "h", "w", "y", "b", "y", "i", "h", "l", "h", "h", "e", "y", "l", "l", "h", "s", "h", "v", "w", "i", "l", "v", "m", "s", "o", "e", "s", "v", "u", "o", "z", "i", "n", "h", "i", "u", "l", "w", "z", "a", "s", "n", "h", "y", "n", "y", "z", "v", "u", "l", "b", "i", "e", "l", "p", "h", "o", "i", "o", "s", "v", "u", "n", "a", "y", "m", "e", "b", "n", "o", "n", "z", "b", "o", "e", "w", "a", "a", "i", "z", "i", "h", "n", "i", "s", "p", "w", "h", "m", "v", "v", "s", "p", "e", "h", "b", "b", "e", "z", "m", "u", "p", "z", "h", "y", "h", "s", "e", "e", "l", "b", "n", "l", "y", "y", "n", "m", "b", "y", "i", "b", "b", "s", "e", "e", "w", "o", "y", "v", "o", "l", "u", "m", "e", "e", "h", "l", "n", "m", "w", "w", "a", "o", "a", "e", "m", "a", "i", "m", "u", "m", "b", "i", "i", "u", "a", "b", "y", "y", "z", "w", "y", "n", "v", "o", "s", "e", "m", "o", "s", "w", "h", "l", "n", "n", "n", "e", "o", "l", "s", "l", "l", "y", "y", "p", "u", "o", "u", "o", "u", "n", "n", "o", "y", "o", "y", "m", "h", "i", "w", "s", "s", "p", "l", "n", "w", "n", "h", "l", "z", "v", "i", "p", "a", "s", "e", "m", "v", "w", "h", "o", "p", "m", "u", "l", "a", "i", "o", "o", "y", "e", "i", "v", "e", "a", "y", "h", "y", "h", "h", "b", "h", "v", "w", "w", "i", "s", "s", "a", "a", "s", "v", "i", "u", "n", "n", "y", "h", "z", "s", "e", "y", "z", "z", "b", "i", "o", "y", "l", "l", "b", "b", "i", "b", "w", "m", "u", "v", "o", "b", "u", "o", "e", "o", "n", "b", "w", "v", "s", "a", "m", "b", "l", "z", "h", "z", "b", "n", "s", "o", "s", "n", "n", "p", "v", "u", "b", "z", "o", "h", "y", "a", "e", "v", "e", "h", "n", "y", "s", "n", "i", "b", "m", "l", "l", "e", "h", "o", "h", "e", "n", "p", "n", "b", "o", "l", "e", "n", "e", "b", "w", "a", "l", "i", "o", "u", "h", "m", "i", "i", "i", "m", "v", "h", "w", "l", "a", "s", "i", "y", "e", "w", "m", "w", "o", "e", "v", "l", "a", "u", "o", "y", "l", "w", "u", "a", "v", "n", "l", "v", "h", "i", "y", "z", "i", "z", "z", "i", "s", "y", "l", "e", "w", "p", "l", "h", "p", "s", "w", "w", "h", "i", "n", "m", "z", "l", "h", "o", "e", "h", "y", "p", "p", "a", "l", "i", "o", "o", "a", "i", "v", "n", "i", "e", "b", "y", "e", "w", "p", "y", "s", "o", "z", "a", "o", "n", "m", "o", "p", "e", "z", "m", "v", "z", "h", "m", "u", "h", "w", "a", "n", "h", "b", "h", "u", "h", "i", "p", "u", "n", "m", "z", "n", "n", "e", "e", "b", "y", "l", "o", "b", "h", "n", "w", "v", "v", "l", "b", "p", "l", "b", "u", "w", "h", "z", "o", "i", "w", "b", "y", "a", "y", "p", "z", "z", "v", "l", "n", "b", "l", "h", "s", "s", "e", "l", "m", "s", "n", "s", "b", "w", "v", "l", "z", "n", "y", "n", "a", "b", "l", "p", "e", "h", "l", "s", "h", "a", "p", "e", "w", "o", "l", "z", "p", "n", "p", "m", "b", "n", "v", "p", "n", "o", "e", "w", "h", "y", "n", "i", "l", "m", "i", "i", "u", "b", "h", "b", "n", "y", "z", "p", "l", "s", "s", "v", "e", "u", "e", "a", "y", "n", "y", "l", "u", "i", "i", "l", "h", "z", "m", "e", "h", "o", "z", "h", "n", "w", "l", "e", "b", "z", "w", "z", "z", "l", "n", "l", "u", "w", "m", "m", "h", "a", "v", "l", "p", "n", "s", "l", "a", "e", "v", "z", "p", "m", "b", "n", "a", "w", "w", "e", "p", "w", "o", "m", "i", "p", "w", "s", "b", "i", "e", "b", "z", "o", "m", "y", "b", "o", "v", "l", "w", "b", "v", "w", "p", "m", "l", "a", "h", "s", "a", "h", "i", "v", "i", "e", "w", "b", "a", "l", "p", "u", "z", "s", "w", "p", "i", "w", "m", "p", "y", "z", "w", "z", "n", "y", "h", "y", "o", "v", "n", "m", "n", "y", "a", "l", "o", "n", "e", "w", "i", "w", "m", "s", "h", "s", "l", "s", "w", "m", "v", "l", "w", "a", "b", "w", "a", "h", "b", "z", "h", "a", "i", "i", "o", "u", "y", "n", "w", "h", "b", "i", "u", "m", "h", "o", "n", "z", "z", "a", "p", "u", "o", "m", "l", "m", "b", "a", "l", "y", "h", "v", "v", "v", "h", "n", "w", "i", "h", "b", "l", "z", "l", "m", "m", "l", "p", "m", "o", "n", "u", "n", "o", "s", "e", "e", "e", "e", "z", "y", "i", "z", "n", "e", "u", "v", "l", "h", "w", "l", "l", "z", "y", "b", "v", "y", "n", "u", "n", "z", "s", "w", "w", "e", "o", "o", "w", "i", "a", "h", "b", "w", "h", "i", "w", "s", "z", "u", "p", "h", "b", "h", "p", "p", "o", "l", "h", "e", "z", "o", "w", "a", "h", "w", "v", "i", "w", "w", "y", "o", "h", "n", "n", "p", "w", "e", "a", "n", "m", "w", "e", "u", "z", "p", "p", "e", "v", "o", "p", "e", "b", "b", "b", "n", "w", "m", "y", "i", "w", "h", "i"], ["z", "u", "z", "i", "z", "y", "w", "e", "m", "b", "u", "l", "l", "u", "e", "s", "n", "s", "m", "b", "p", "y", "w", "v", "m", "y", "l", "b", "h", "i", "y", "b", "o", "l", "u", "i", "e", "v", "o", "w", "p", "a", "z", "u", "i", "o", "b", "w", "m", "b", "n", "a", "y", "y", "v", "a", "v", "m", "s", "m", "v", "n", "e", "m", "o", "h", "p", "n", "w", "s", "y", "n", "w", "y", "u", "m", "a", "y", "s", "m", "n", "e", "w", "e", "u", "m", "m", "z", "z", "z", "v", "i", "w", "s", "y", "v", "i", "a", "y", "m", "y", "b", "p", "e", "v", "z", "y", "p", "a", "m", "b", "y", "s", "o", "n", "w", "n", "h", "m", "z", "u", "n", "b", "e", "v", "s", "o", "z", "z", "b", "y", "i", "w", "n", "l", "s", "y", "i", "w", "b", "u", "e", "i", "u", "m", "m", "w", "b", "i", "s", "m", "p", "v", "u", "u", "w", "m", "a", "l", "m", "w", "s", "u", "p", "w", "m", "h", "n", "s", "s", "v", "e", "u", "z", "v", "e", "u", "a", "l", "p", "l", "y", "n", "p", "u", "m", "b", "l", "h", "s", "a", "y", "s", "n", "p", "m", "m", "v", "u", "b", "l", "u", "u", "b", "m", "o", "b", "p", "a", "y", "l", "w", "i", "y", "i", "e", "m", "m", "n", "s", "o", "z", "u", "h", "v", "b", "u", "b", "i", "u", "p", "z", "w", "z", "s", "o", "m", "p", "w", "z", "n", "n", "l", "n", "p", "m", "y", "u", "e", "n", "m", "h", "y", "m", "h", "m", "n", "p", "l", "i", "u", "a", "v", "l", "l", "z", "e", "n", "o", "b", "o", "v", "y", "n", "i", "v", "h", "a", "e", "b", "p", "l", "m", "h", "y", "b", "y", "n", "m", "h", "p", "u", "o", "p", "w", "b", "e", "o", "o", "a", "o", "a", "i", "m", "w", "v", "y", "e", "e", "l", "e", "a", "m", "w", "p", "b", "a", "o", "s", "z", "z", "s", "p", "v", "v", "i", "b", "v", "u", "n", "w", "y", "a", "h", "a", "l", "y", "a", "v", "o", "h", "v", "u", "e", "y", "m", "n", "a", "u", "n", "w", "m", "m", "y", "e", "o", "l", "b", "p", "e", "w", "m", "i", "s", "z", "i", "z", "u", "y", "b", "z", "m", "v", "n", "p", "u", "m", "n", "m", "p", "v", "b", "s", "w", "l", "b", "n", "o", "z", "w", "p", "e", "u", "m", "z", "h", "b", "u", "h", "z", "e", "v", "l", "p", "v", "z", "n", "z", "h", "i", "p", "w", "o", "y", "l", "n", "h", "w", "b", "m", "l", "a", "i", "w", "a", "w", "a", "l", "a", "n", "b", "n", "u", "b", "b", "p", "v", "o", "m", "o", "n", "b", "i", "o", "u", "v", "p", "y", "m", "l", "n", "p", "u", "h", "p", "s", "s", "n", "w", "p", "m", "n", "b", "z", "p", "m", "z", "b", "z", "v", "n", "v", "s", "a", "b", "s", "y", "a", "b", "h", "z", "y", "m", "p", "e", "n", "h", "y", "s", "n", "n", "n", "i", "i", "u", "p", "s", "b", "w", "y", "w", "l", "z", "n", "p", "e", "b", "a", "n", "y", "z", "b", "s", "o", "i", "p", "m", "w", "h", "h", "i", "m", "o", "b", "v", "u", "w", "i", "m", "a", "e", "e", "p", "o", "a", "w", "o", "h", "m", "i", "p", "u", "e", "a", "m", "s", "p", "w", "y", "b", "e", "v", "w", "i", "v", "z", "l", "l", "o", "y", "s", "v", "m", "a", "b", "m", "m", "a", "h", "u", "n", "z", "h", "n", "u", "w", "a", "p", "m", "a", "a", "s", "z", "l", "e", "a", "u", "i", "z", "e", "u", "p", "v", "n", "b", "o", "w", "p", "p", "z", "a", "l", "z", "m", "h", "b", "w", "u", "b", "v", "h", "u", "w", "a", "o", "z", "m", "m", "z", "u", "l", "l", "m", "y", "y", "a", "i", "n", "v", "z", "o", "v", "e", "h", "n", "y", "a", "u", "n", "n", "a", "o", "s", "i", "y", "m", "v", "w", "b", "p", "s", "b", "s", "y", "o", "w", "v", "v", "u", "b", "a", "z", "a", "o", "w", "n", "e", "s", "l", "z", "s", "o", "l", "i", "i", "z", "p", "n", "w", "u", "h", "m", "z", "b", "w", "p", "a", "i", "a", "o", "u", "v", "z", "l", "a", "w", "a", "b", "y", "i", "i", "b", "u", "o", "s", "h", "m", "b", "h", "a", "y", "p", "m", "b", "a", "b", "s", "m", "m", "m", "y", "m", "l", "m", "y", "m", "s", "b", "s", "u", "b", "e", "s", "n", "w", "v", "p", "p", "z", "p", "w", "h", "z", "u", "z", "p", "i", "u", "n", "v", "o", "n", "y", "e", "i", "o", "b", "b", "b", "v", "y", "o", "b", "m", "n", "v", "i", "h", "y", "i", "i", "w", "v", "l", "p", "o", "v", "z", "s", "y", "l", "w", "n", "a", "i", "i", "m", "u", "w", "i", "b", "n", "w", "v", "i", "z", "o", "u", "n", "e", "o", "v", "u", "b", "e", "o", "v", "a", "i", "e", "v", "m", "a", "p", "z", "a", "o", "p", "m", "m", "e", "l", "h", "w", "m", "i", "w", "w", "v", "v", "e", "e", "n", "l", "h", "u", "o", "p", "p", "p", "h", "l", "o", "p", "w", "n", "a", "u", "o", "w", "s", "i", "l", "e", "n", "l", "b", "m", "m", "v", "s", "w", "b", "b", "e", "i", "a", "m", "v", "u", "u", "i", "v", "i", "v", "l", "e", "l", "h", "a", "s", "n", "b", "o", "p", "y", "i", "a", "i", "z", "u", "o", "z", "u", "e", "l", "n", "e", "b", "p", "h", "s", "e", "o", "a", "v", "e", "o", "v", "i", "u", "i", "e", "y", "h", "p", "o", "e", "y", "v", "p", "i", "u", "n", "e", "l", "y", "b", "v", "e", "p", "b", "o", "y", "m", "m", "p", "s", "y", "m", "n", "p", "m", "o", "a", "n", "v", "b", "b", "a", "w", "e", "u", "e", "h", "p", "s", "w", "w", "y", "m", "p", "o", "a", "y", "y", "i", "i", "s", "z", "a", "o", "y", "i", "u", "i", "b", "a", "u", "s", "n", "s", "u", "v", "u", "e", "h", "h", "v", "u", "s", "s", "o", "m", "b", "b", "m", "z", "u", "l", "o", "w", "n", "y", "h", "w", "a", "e", "m", "p", "o", "e", "p", "o", "o", "p", "i", "u", "l", "u", "m", "y", "u", "p", "z", "b", "l", "n", "p", "i", "e", "o", "w", "y", "u", "e", "w", "b", "e", "s", "w", "a", "e", "u", "o", "v", "z", "u", "n", "i", "p", "b", "w", "m", "o", "u", "u", "m", "y", "a", "w", "s", "m", "l", "u", "l", "z", "o", "p", "v", "e", "z", "p", "b", "v", "s", "p", "l", "y", "p", "v", "b", "i", "n", "v", "h", "n", "l", "z", "i", "i", "y", "a", "s", "b", "b", "n", "u", "m", "a", "u", "v", "i", "u", "u", "n", "w", "w", "n", "m", "v", "a", "n", "a", "z", "h", "i", "z", "w", "u", "y", "z", "s", "h", "l", "h", "b", "u", "o", "u", "b", "n", "l", "b", "y", "l", "b", "z", "s", "p", "z", "l", "w", "z", "a", "v", "z", "m", "m", "o", "n", "b", "w", "a", "u", "o", "u", "z", "e", "h", "h", "m", "v", "l", "b", "y", "b", "n", "p", "v", "z", "w", "w", "o", "v", "m", "l", "l", "y", "b", "y", "p", "z", "o", "y", "m", "a", "m", "s", "w", "n", "y", "w", "y", "v", "v", "u", "b", "y", "a", "b", "y", "n", "h", "w", "z", "s", "y", "w", "s", "i", "p", "b", "y", "v", "l", "p", "y", "v", "y", "s", "a", "u", "l", "b", "u", "i", "m", "e", "b", "i", "b", "y", "e", "i", "l", "v", "i", "l", "o", "p", "a", "z", "o", "a", "u", "p", "b", "p", "m", "h", "p", "v", "z", "o", "i", "n", "p", "p", "w", "i", "y", "y", "a", "y", "z", "o", "v", "y", "m", "s", "p", "y", "o", "b", "w", "v", "v", "b", "s", "s", "v", "s", "u", "v", "m", "a", "a", "u", "v", "z", "v", "p", "b", "i", "w", "v", "l", "m", "e", "e", "b", "z", "n", "v", "p", "i", "b", "l", "i", "h", "h", "o", "v", "u", "p", "b", "i", "w", "b", "u", "l", "m", "l", "i", "p", "b", "n", "a", "e", "z", "b", "p", "z", "o", "y", "n", "e", "n", "z", "b", "m", "v", "e", "e", "w", "a", "s", "l", "m", "s", "l", "i", "z", "i", "m", "v", "w", "m", "i", "v", "m", "n", "w", "m", "n", "u", "w", "m", "e", "e", "i", "n", "o", "i", "n", "o", "s", "n", "o", "h", "p", "l", "m", "n", "i", "u", "z", "u", "e", "a", "w", "a", "w", "b", "m", "h", "z", "n", "z", "y", "u", "s", "b", "p", "p", "s", "m", "y", "s", "y", "h", "e", "h", "l", "n", "l", "l", "w", "s", "v", "m", "i", "h", "n", "n", "a", "m", "i", "s", "h", "b", "u", "y", "p", "v", "m", "b", "b", "p", "b", "h", "n", "n", "i", "a", "b", "o", "l", "w", "a", "m", "m", "y", "v", "z", "w", "a", "n", "e", "a", "e", "m", "y", "v", "p", "a", "a", "z", "l", "a", "o", "a", "u", "y", "p", "y", "y", "l", "b", "h", "y", "u", "m", "y", "v", "m", "w", "a", "s", "e", "o", "m", "m", "z", "i", "y", "v", "n", "o", "p", "v", "i", "v", "b", "w", "v", "p", "a", "m", "h", "l", "o", "b", "u", "y", "y", "u", "n", "u", "z", "b", "e", "h", "e", "z", "a", "u", "m", "z", "m", "s", "y", "z", "l", "m", "m", "n", "m", "m", "i", "a", "v", "b", "s", "a", "l", "v", "n", "l", "i", "s", "z", "w", "n", "l", "l", "b", "p", "e", "e", "b", "h", "m", "b", "e", "w", "w", "b", "l", "i", "y", "b", "s", "o", "l", "h", "n", "v", "v", "e", "v", "s", "o", "a", "m", "v", "m", "u", "s", "v", "y", "b", "a", "v", "s", "a", "b", "p", "i", "v", "y", "v", "p", "p", "b", "a", "z", "l", "a", "w", "l", "l", "u", "b", "v", "z", "u", "p", "m", "h", "s", "b", "n", "y", "o", "z", "b", "b", "n", "n", "s", "m", "p", "u", "u", "s", "m", "s", "z", "n", "y", "u", "s", "w", "e", "u", "z", "o", "u", "n", "i", "o", "l", "v", "s", "o", "z", "z", "n", "u", "w", "n", "v", "w", "s", "a", "h", "v", "z", "u", "h", "y", "o", "u", "p", "i", "p", "o", "w", "n", "b", "o", "o", "e", "v", "m", "s", "h", "z", "z", "a", "o", "n", "h", "s", "v", "l", "o", "v", "y", "m", "m", "m", "l", "z", "w", "e", "e", "p", "m", "l", "m", "e", "s", "e", "a", "i", "z", "i", "l", "y", "s", "h", "u", "y", "n", "h", "u", "u", "a", "l", "a", "a", "n", "a", "b", "a", "h", "u", "y", "m", "o", "m", "h", "a", "e", "u", "z", "l", "s", "s", "u", "s", "o", "y", "b", "y", "s", "o", "e", "m", "y", "e", "z", "b", "n", "w", "u", "v", "n", "y", "y", "i", "p", "l", "u", "p", "u", "e", "m", "l", "n", "i", "p", "o", "e", "s", "y", "v", "m", "u", "i", "e", "u", "p", "z", "e", "b", "m", "b", "u", "w", "v", "i", "n", "h", "a", "z", "l", "s", "e", "b", "m", "b", "v", "b", "z", "b", "h", "o", "o", "l", "b", "o", "l", "w", "z", "e", "w", "e", "p", "n", "y", "w", "o", "m", "h", "v", "o", "a", "u", "u", "e", "h", "z", "y", "e", "e", "i", "v", "m", "b", "a", "w", "l", "p", "p", "s", "v", "u", "n", "u", "a", "s", "w", "h", "n", "m", "b", "l", "m", "v", "a", "i", "s", "w", "u", "o", "l", "u", "h", "h", "n", "o", "n", "m", "l", "o", "w", "e", "h", "i", "v", "w", "l", "h", "p", "m", "o", "s", "p", "y", "n", "m", "p", "v", "w", "w", "p", "v", "u", "p", "n", "m", "s", "l", "p", "e", "z", "w", "p", "i", "u", "e", "s", "l", "m", "n", "n", "l", "a", "m", "p", "n", "h", "a", "e", "m", "h", "v", "y", "u", "l", "a", "a", "l", "m", "v", "l", "n", "o", "n", "z", "e", "a", "p", "s", "n", "m", "s", "n", "a", "h", "n", "l", "h", "l", "z", "m", "y", "o", "m", "y", "u", "l", "s", "p", "l", "v", "n", "a", "o", "w", "b", "e", "a", "w", "w", "w", "z", "s", "b", "u", "s", "e", "e", "p", "m", "y"], [745_546, 681_763, 567_802, 714_000, 250_223, 676_168, 444_410, 527_553, 539_719, 237_541, 696_428, 560_465, 863_906, 796_296, 428_070, 18490, 54402, 542_636, 460_145, 966_528, 362_462, 104_880, 646_640, 461_359, 97243, 827_845, 398_969, 647_258, 941_991, 742_668, 890_530, 756_048, 250_972, 626_893, 855_304, 619_312, 569_762, 925_139, 241_103, 548_379, 142_738, 237_066, 643_035, 81116, 653_135, 438_231, 217_017, 511_962, 589_779, 761_220, 274_768, 576_117, 512_613, 532_612, 911_093, 165_413, 607_172, 256_053, 330_723, 280_576, 539_232, 29355, 86424, 843_231, 510_568, 531_223, 335_530, 169_903, 595_277, 970_232, 781_022, 457_910, 514_351, 153_815, 49601, 994_502, 179_631, 869_857, 32952, 333_217, 915_309, 887_802, 802_546, 273_560, 659_751, 996_122, 771_046, 983_170, 958_044, 187_888, 526_229, 610_546, 507_368, 296_596, 62715, 549_555, 574_593, 673_622, 308_748, 272_856, 412_850, 912_078, 327_031, 989_337, 488_811, 981_765, 661_273, 708_178, 402_096, 678_953, 64500, 565_907, 29632, 266_317, 162_603, 498_262, 149_281, 198_824, 415_695, 582_258, 710_013, 632_530, 593_250, 726_557, 376_302, 556_283, 723_094, 103_059, 563_190, 930_834, 413_921, 912_243, 942_797, 809_930, 205_611, 360_333, 505_711, 403_206, 511_661, 757_042, 2587, 65183, 638_120, 900_128, 244_108, 842_270, 583_688, 433_020, 385_635, 970_188, 201_558, 895_196, 815_759, 371_550, 969_739, 790_222, 192_498, 856_654, 366_323, 162_824, 761_898, 885_782, 472_667, 881_741, 50718, 856_868, 729_025, 153_568, 183_938, 785_581, 978_433, 178_420, 36718, 980_518, 722_308, 846_508, 129_694, 922_120, 875_977, 958_437, 829_292, 901_764, 223_022, 54508, 91451, 696_587, 296_292, 372_111, 330_427, 94751, 240_179, 920_309, 625_113, 655_515, 53380, 199_111, 779_722, 740_547, 275_893, 134_560, 521_589, 75700, 704_270, 675_800, 223_555, 498_114, 859_480, 783_623, 598_320, 848_217, 481_148, 40259, 211_602, 133_653, 249_063, 489_866, 982_043, 369_468, 820_016, 88747, 56924, 472_490, 744_326, 984_575, 952_303, 451_550, 461_246, 215_017, 872_423, 174_571, 902_338, 354_921, 689_923, 379_313, 39192, 493_143, 338_779, 432_564, 995_503, 789_668, 532_861, 394_816, 509_010, 335_514, 956_309, 161_917, 528_559, 502_754, 380_156, 482_050, 102_915, 653_536, 716_749, 771_848, 558_804, 428_575, 763_886, 190_742, 35579, 910_388, 148_331, 928_518, 773_604, 731_743, 703_187, 517_991, 332_759, 31865, 892_423, 888_418, 488_412, 455_388, 682_592, 162_706, 46575, 273_998, 675_481, 630_129, 821_792, 623_992, 92449, 646_546, 227_624, 619_640, 376_448, 113_627, 907_357, 822_664, 768_252, 436_908, 414_919, 376_532, 367_798, 996_233, 898_369, 315_181, 254_958, 886_578, 806_368, 570_893, 667_358, 232_732, 781_302, 20486, 635_668, 505_767, 910_229, 281_404, 549_057, 234_184, 850_962, 993_037, 180_347, 995_001, 537_229, 130_576, 170_715, 227_581, 450_962, 38319, 995_500, 467_131, 443_954, 363_223, 468_117, 693_128, 797_836, 87421, 930_647, 735_005, 499_716, 944_535, 15368, 614_121, 894_985, 878_955, 647_855, 611_444, 429_414, 720_601, 907_776, 305_848, 684_956, 754_183, 360_360, 820_611, 148_939, 209_256, 389_422, 875_899, 788_364, 704_627, 408_081, 889_216, 302_811, 84012, 501_190, 222_222, 285_015, 537_056, 926_960, 671_920, 727_750, 712_250, 859_813, 560_317, 936_771, 804_974, 38617, 112_347, 657_472, 349_524, 948_895, 220_442, 919_060, 410_733, 671_861, 59670, 115_222, 18437, 421_935, 402_667, 952_659, 359_492, 107_517, 174_016, 335_381, 120_919, 693_320, 493_234, 28882, 516_657, 385_527, 594_992, 183_044, 498_100, 375_970, 656_038, 582_516, 562_858, 842_441, 344_796, 249_881, 728_476, 936_845, 555_379, 168_346, 764_278, 460_890, 627_204, 760_016, 718_531, 312_849, 343_716, 146_605, 847_797, 412_324, 770_817, 997_073, 698_216, 6433, 981_591, 701_829, 870_131, 106_888, 992_509, 120_202, 737_576, 669_674, 974_594, 352_619, 478_527, 681_497, 825_584, 870_237, 52311, 86608, 774_034, 863_886, 169_466, 760_189, 966_845, 739_579, 769_171, 837_087, 392_633, 528_448, 43153, 756_124, 782_428, 412_871, 124_970, 727_659, 761_198, 366_027, 42849, 723_087, 71523, 396_592, 298_069, 575_351, 692_517, 870_601, 910_203, 819_934, 224_171, 376_718, 942_653, 959_486, 783_646, 940_182, 943_389, 727_976, 934_182, 762_334, 825_406, 826_468, 380_175, 393_901, 786_480, 968_803, 45222, 412_620, 557_176, 707_016, 301_397, 408_047, 319_872, 35011, 973_284, 602_580, 911_328, 804_989, 849_311, 202_158, 133_925, 566_611, 455_779, 388_872, 884_644, 57943, 612_912, 242_980, 957_422, 640_734, 406_246, 359_628, 90468, 46733, 68352, 811_190, 522_628, 729_739, 388_037, 970_684, 170_350, 957_660, 897_053, 766_505, 697_395, 122_802, 716_134, 524_811, 10704, 363_598, 395_669, 15621, 402_576, 622_634, 207_547, 329_132, 568_789, 42927, 793_882, 992_385, 936_744, 843_169, 17407, 579_486, 978_648, 65623, 453_399, 82438, 302_473, 895_213, 191_140, 84663, 964_567, 334_948, 584_605, 279_351, 855_283, 768_757, 854_262, 791_212, 143_244, 22280, 254_372, 699_882, 542_064, 154_116, 402_009, 573_732, 596_475, 136_357, 667_009, 192_461, 333_571, 651_359, 498_148, 264_500, 327_962, 688_586, 207_423, 221_014, 323_453, 491_887, 111_474, 291_248, 743_416, 41606, 815_834, 15682, 286_665, 949_632, 847_448, 278_135, 341_523, 803_342, 710_757, 386_801, 811_336, 542_875, 284_401, 368_544, 616_987, 559_014, 493_903, 272_966, 388_472, 71458, 996_416, 583_457, 703_207, 520_939, 833_234, 41035, 910_245, 400_242, 822_713, 651_366, 786_152, 663_452, 333_255, 348_086, 675_160, 486_986, 691_430, 722_759, 11632, 256_061, 236_388, 318_884, 902_427, 351_687, 394_097, 988_340, 704_090, 641_027, 867_553, 945_850, 346_569, 384_335, 685_283, 768_858, 918_237, 971_009, 968_089, 640_257, 195_421, 735_032, 375_259, 878_303, 787_732, 682_473, 583_086, 560_303, 831_204, 150_365, 845_066, 982_457, 997_699, 225_214, 581_953, 514_431, 592_709, 449_820, 681_180, 665_926, 290_023, 92856, 502_918, 997_737, 287_383, 667_610, 743_262, 385_733, 918_184, 871_462, 254_925, 478_463, 587_693, 870_581, 807_961, 393_432, 907_516, 583_909, 965_727, 551_166, 114_789, 607_859, 737_419, 287_396, 930_049, 207_488, 259_590, 224_168, 997_774, 507_006, 902_955, 959_411, 15573, 419_967, 566_330, 740_591, 147_624, 223_686, 342_806, 417_240, 528_981, 251_008, 477_683, 622_966, 147_675, 434_248, 745_501, 361_172, 830_234, 662_158, 609_960, 991_800, 755_482, 655_482, 364_608, 2054, 192_450, 32204, 515_958, 343_361, 735_735, 650_889, 432_841, 949_277, 737_551, 759_871, 866_151, 164_790, 456_990, 679_841, 674_903, 601_145, 807_569, 122_322, 232_318, 22027, 792_274, 816_110, 784_717, 219_860, 321_509, 226_092, 663_431, 65752, 466_402, 248_668, 997_316, 626_638, 436_405, 664_138, 151_216, 449_458, 969_387, 442_830, 796_743, 769_514, 758_344, 915_402, 954_060, 347_897, 154_759, 759_590, 660_693, 790_760, 892_561, 910_156, 234_708, 849_694, 985_792, 218_985, 275_596, 131_315, 435_738, 910_223, 734_405, 906_818, 50687, 90961, 778_409, 393_540, 643_802, 117_304, 259_957, 313_133, 643_237, 599_232, 492_604, 353_068, 639_539, 592_236, 748_359, 341_202, 759_526, 897_024, 960_534, 151_267, 495_683, 117_581, 436_645, 67995, 192_494, 928_947, 803_499, 792_307, 276_988, 981_699, 703_994, 402_187, 813_587, 40009, 128_206, 694_483, 971_920, 24610, 513_999, 950_964, 84439, 662_098, 197_499, 706_754, 396_664, 438_792, 864_285, 186_260, 456_557, 201_360, 240_773, 814_145, 137_394, 283_636, 871_647, 600_691, 208_441, 505_194, 646_020, 826_223, 450_701, 113_352, 405_523, 938_813, 551_855, 764_841, 437_983, 950_506, 124_876, 205_883, 703_248, 993_868, 686_347, 470_669, 22400, 280_205, 366_946, 134_427, 311_869, 671_388, 171_669, 579_547, 699_544, 659_105, 463_100, 304_819, 10749, 999_994, 549_174, 567_554, 495_722, 952_684, 914_595, 782_761, 869_004, 760_462, 593_845, 411_679, 366_651, 827_120, 62089, 828_962, 682_228, 226_286, 849_112, 983_118, 719_601, 87399, 324_260, 881_281, 855_055, 604_642, 599_891, 314_389, 87985, 932_996, 680_946, 762_888, 278_762, 871_098, 678_445, 583_977, 217_951, 788_836, 311_767, 534_963, 213_735, 801_050, 9738, 237_942, 912_108, 16109, 928_335, 192_247, 873_846, 384_203, 745_219, 835_453, 261_339, 809_891, 804_523, 748_063, 273_016, 674_052, 899_614, 196_176, 847_449, 682_136, 820_471, 957_935, 224_631, 180_060, 383_565, 569_996, 755_395, 548_703, 547_900, 364_947, 40795, 569_927, 895_159, 411_637, 557_664, 307_047, 510_513, 236_072, 709_179, 168_168, 213_936, 879_842, 835_273, 496_111, 610_127, 842_599, 724_929, 336_221, 38309, 172_467, 223_785, 758_648, 434_128, 343_438, 887_239, 692_024, 318_957, 626_578, 544_591, 813_415, 889_330, 485_774, 972_040, 93838, 433_236, 817_884, 515_085, 133_522, 808_349, 692_180, 980_715, 596_208, 641_256, 245_910, 899_699, 738_602, 956_312, 198_419, 729_243, 944_476, 340_437, 16096, 716_234, 237_847, 153_886, 600_972, 668_797, 879_147, 86919, 170_206, 916_717, 742_166, 212_071, 969_419, 938_388, 648_433, 820_324, 721_991, 239_984, 107_959, 862_425, 743_157, 682_366, 958_879, 149_135, 888_873, 559_736, 930_533, 211_120, 513_955, 965_011, 635_085, 639_110, 59381, 660_611, 88438, 826_847, 940_202, 162_013, 719_677, 190_782, 802_316, 392_533, 974_990, 969_207, 632_511, 609_997, 559_313, 605_428, 738_650, 665_137, 854_532, 375_572, 42977, 276_271, 883_878, 404_800, 898_642, 850_849, 968_582, 206_980, 540_489, 211_292, 841_465, 45919, 732_996, 974_712, 265_692, 485_894, 330_930, 987_715, 28920, 772_409, 558_118, 347_916, 336_389, 975_532, 946_869, 485_005, 717_121, 322_289, 805_591, 260_129, 283_407, 409_842, 608_901, 769_608, 262_609, 868_680, 150_412, 250_276, 862_655, 431_676, 659_797, 397_736, 664_856, 808_420, 765_630, 751_992, 680_014, 819_183, 894_873, 522_466, 209_119, 773_015, 809_828, 536_462, 908_741, 538_278, 281_485, 662_106, 679_842, 827_766, 284_321, 265_729, 446_012, 211_126, 516_813, 709_083, 685_207, 890_477, 330_507, 76366, 522_354, 359_562, 268_747, 614_783, 522_968, 739_746, 225_984, 448_560, 9119, 577_341, 770_359, 564_200, 598_435, 840_874, 807_493, 204_387, 974_224, 483_583, 318_379, 52297, 375_005, 656_480, 806_896, 789_046, 457_878, 651_572, 573_819, 397_285, 87264, 36008, 110_193, 443_127, 747_969, 186_469, 404_698, 910_006, 786_697, 610_653, 275_889, 673_675, 954_962, 184_649, 37885, 752_362, 382_825, 666_977, 447_612, 543_497, 901_970, 852_474, 914_872, 409_264, 649_293, 733_529, 347_193, 532_603, 321_480, 329_650, 796_372, 372_252, 814_411, 422_257, 155_568, 260_821, 809_384, 493_217, 861_200, 62208, 19784, 291_325, 185_977, 983_068, 617_627, 592_857, 285_848, 901_523, 954_600, 418_955, 581_769, 448_375, 495_066, 743_285, 297_641, 214_873, 262_574, 490_304, 457_709, 499_578, 123_019, 173_911, 258_018, 262_493, 619_814, 961_220, 44230, 553_801, 315_602, 581_545, 585_942, 230_181, 774_581, 222_011, 865_918, 779_467, 85406, 783_695, 763_210, 981_832, 798_695, 423_792, 882_483, 629_800, 352_013, 701_195, 464_269, 316_083, 652_281, 860_163, 403_379, 660_298, 993_716, 156_547, 437_881, 283_930, 990_291, 815_908, 382_855, 963_992, 948_311, 588_590, 984_521, 226_393, 74469, 372_064, 516_814, 968_999, 415_986, 594_691, 797_246, 993_768, 126_928, 515_990, 524_959, 846_496, 208_433, 610_283, 416_984, 253_484, 553_819, 386_233, 507_756, 973_732, 699_011, 744_756, 293_065, 428_406, 860_329, 997_951, 30647, 135_191, 379_464, 968_112, 990_898, 259_367, 887_434, 251_274, 641_293, 52732, 506_313, 489_205, 707_924, 416_314, 108_982, 753_276, 86650, 398_438, 549_196, 823_553, 716_909, 155_733, 760_241, 842_197, 562_155, 882_097, 374_240, 774_624, 151_279, 858_133, 247_368, 403_726, 958_835, 41688, 740_912, 664_994, 119_470, 540_820, 556_828, 853_056, 997_567, 51798, 661_037, 966_416, 824_595, 54330, 427_538, 630_306, 230_641, 313_063, 678_792, 846_208, 749_721, 522_367, 520_003, 568_063, 65371, 173_449, 979_612, 527_738, 462_153, 30891, 712_249, 920_607, 582_269, 436_568, 117_141, 886_165, 691_390, 678_997, 180_139, 710_703, 817_383, 400_653, 233_390, 275_787, 167_022, 250_964, 706_120, 713_575, 814_426, 123_300, 297_226, 784_899, 317_963, 11692, 685_315, 558_024, 47180, 468_661, 961_030, 208_090, 520_048, 214_230, 978_509, 465_713, 469_886, 590_928, 43838, 958_053, 206_167, 456_028, 900_897, 494_674, 679_264, 336_724, 918_705, 460_056, 514_795, 761_728, 727_671, 906_912, 532_608, 208_005, 480_501, 788_281, 951_524, 117_605, 868_184, 886_911, 715_086, 686_515, 218_372, 335_913, 622_634, 215_582, 841_308, 765_697, 521_641, 855_451, 974_207, 296_797, 352_386, 331_562, 194_417, 542_647, 316_381, 732_832, 735_848, 939_376, 151_648, 85738, 637_705, 230_568, 330_994, 964_159, 113_465, 104_065, 815_929, 842_175, 452_184, 208_363, 554_141, 613_997, 980_938, 482_348, 44024, 491_596, 977_984, 122_403, 947_676, 136_572, 388_274, 311_427, 234_153, 765_002, 800_652, 633_678, 111_081, 167_162, 439_782, 716_204, 49942, 88253, 366_449, 518_710, 941_124, 148_894, 967_328, 126_465, 869_698, 792_973, 128_848, 826_988, 997_529, 770_050, 46916, 774_655, 828_605, 6695, 671_320, 122_709, 648_007, 75041, 120_632, 646_807, 229_430, 414_552, 887_732, 446_124, 498_971, 37414, 372_375, 287_871, 298_821, 177_365, 214_767, 913_650, 316_285, 572_629, 84592, 807_294, 567_401, 398_834, 424_064, 128_223, 6877, 976_451, 983_521, 409_477, 788_438, 481_941, 208_673, 619_785, 529_241, 17483, 841_595, 698_661, 927_425, 820_420, 933_487, 940_215, 381_124, 672_565, 39023, 633_179, 778_057, 433_066, 426_441, 335_307, 429_641, 924_531, 805_546, 966_668, 389_168, 210_431, 714_597, 926_873, 202_844, 763_058, 65712, 102_758, 970_611, 518_046, 240_562, 54001, 695_774, 618_022, 393_770, 883_760, 394_688, 131_523, 80693, 351_057, 197_606, 46835, 13060, 330_329, 775_150, 607_325, 333_000, 6049, 303_863, 809_347, 393_021, 832_842, 875_674, 487_843, 471_336, 596_338, 549_804, 964_137, 376_305, 802_935, 320_041, 656_897, 440_629, 548_263, 640_134, 108_906, 925_949, 726_496, 758_563, 539_355, 759_336, 864_257, 375_444, 294_951, 652_646, 127_076, 416_929, 400_785, 581_259, 216_444, 518_672, 530_443, 157_441, 778_502, 180_730, 729_877, 249_838, 659_311, 643_467, 569_040, 210_400, 670_747, 96242, 766_532, 939_360, 715_843, 985_977, 393_306, 972_725, 28556, 312_314, 397_858, 595_525, 536_131, 933_421, 749_830, 92325, 937_264, 777_393, 758_062, 361_478, 702_126, 155_241, 474_185, 186_137, 584_587, 130_729, 106_449, 979_237, 595_206, 549_330, 839_443, 538_445, 722_499, 825_383, 917_558, 58094, 607_121, 528_011, 922_575, 80624, 238_098, 229_113, 532_597, 83441, 426_222, 479_632, 25782, 794_685, 602_948, 816_402, 745_616, 926_308, 599_511, 120_439, 808_760, 205_693, 209_620, 416_451, 966_777, 802_211, 173_289, 938_363, 992_900, 942_710, 680_558, 975_787, 294_698, 372_390, 758_259, 202_174, 782_457, 816_893, 811_575, 704_174, 130_829, 616_238, 460_849, 479_680, 467_205, 563_264, 597_385, 884_204, 381_576, 306_848, 494_027, 306_294, 387_402, 301_638, 51520, 351_422, 811_488, 872_987, 278_959, 413_602, 238_894, 954_438, 915_608, 106_309, 850_819, 285_998, 655_253, 322_554, 378_838, 618_348, 472_244, 770_392, 390_460, 728_416, 56569, 379_208, 418_824, 82552, 961_064, 379_090, 375_578, 470_276, 380_860, 889_904, 256_269, 865_919, 262_658, 178_663, 390_263, 57640, 961_445, 771_557, 98980, 199_529, 617_708, 132_182, 149_755, 841_450, 307_840, 393_419, 369_032, 841_794, 213_308, 26250, 148_919, 981_709, 470_433, 140_083, 800_677, 695_970, 296_943, 157_916, 884_850, 555_473, 224_834, 737_664, 448_131, 138_399, 233_886, 622_201, 996_243, 193_488, 853_277, 899_481, 825_328, 173_090, 808_072, 973_347, 470_654, 448_665, 104_418, 371_371, 127_945, 322_820, 379_354, 758_636, 432_780, 60233, 479_147, 272_805, 885_212, 812_582, 207_693, 898_357, 830_472, 543_399, 599_285, 310_551, 47764, 751_076, 891_407, 821_225, 531_749, 107_874, 24627, 997_875, 410_483, 619_872, 909_838, 908_931, 593_811, 801_023, 663_999, 827_617, 776_902, 927_011, 410_865, 104_563, 746_498, 826_135, 519_618, 238_110, 675_809, 614_916, 630_865, 587_568, 991_230, 700_939, 928_457, 554_060, 953_072, 479_416, 729_104, 219_257, 456_588, 56036, 778_286, 999_837, 654_942, 985_912, 579_015, 587_939, 564_656, 523_593, 290_444, 111_317, 585_520, 641_179, 878_799, 460_857, 770_753, 58382, 707_870, 984_730, 150_692, 626_942, 727_040, 367_257, 703_972, 224_255, 505_393, 964_178, 457_079, 810_175, 562_458, 306_283, 948_908, 703_240, 715_826, 240_792, 603_373, 646_955, 420_278, 686_600, 971_832, 823_806, 306_051, 990_133, 935_575, 232_634, 245_426, 913_458, 969_608, 446_491, 273_862, 143_748, 525_157, 680_641, 757_900, 596_980, 240_239, 152_004, 327_003, 625_528, 318_716, 763_162, 866_439, 896_344, 862_230, 963_535, 581_602, 120_545, 394_584, 49009, 406_446, 436_564, 669_418, 174_593, 61803, 257_752, 856_265, 657_247, 93349, 40616, 94280, 663_833, 939_219, 658_438, 190_838, 108_234, 961_030, 234_333, 755_616, 299_687, 393_305, 861_760, 554_683, 494_508, 265_468, 687_607, 859_629, 966_727, 894_847, 404_392, 783_668, 206_930, 221_659, 183_315, 770_578, 256_785, 991_998, 367_723, 886_879, 613_923, 379_377, 273_966, 901_598, 52474, 246_238, 163_973, 864_200, 255_208, 711_518, 721_972, 274_409, 729_010, 928_898, 223_965, 482_200, 576_029, 842_105, 685_853, 351_304, 307_830, 670_828, 806_865, 46667, 188_709, 390_373, 57230, 183_345, 315_385, 894_412, 397_915, 56187, 361_122, 324_410, 891_360, 182_995, 840_763, 86910, 693_552, 595_481, 634_876, 274_274, 463_754, 17075, 338_613, 644_078, 139_632, 141_994, 365_908, 245_805, 587_343, 950_711, 114_119, 209_397, 127_254, 627_334, 841_833, 481_858, 385_070, 626_044, 200_800, 258_987, 717_987, 324_440, 7777, 158_749, 700_113, 881_919, 783_898, 803_135, 791_266, 244_154, 146_355, 452_094, 854_591, 440_271, 978_627, 53783, 515_615, 941_336, 956_932, 178_679, 818_600, 211_272, 838_675, 460_318, 407_562, 165_101, 341_824, 454_658, 34685, 704_265, 961_656, 334_980])
    #expect(result == 18_065_036, #"Expected '18065036', but got '\#(result)'"#)
  }
}
