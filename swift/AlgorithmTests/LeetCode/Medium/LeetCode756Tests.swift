//
//  LeetCode756Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2025/12/29.
//

import Testing

@Suite("756. Pyramid Transition Matrix", .tags(.hashTable, .string, .backTracking, .bitManipulation))
struct LeetCode756Tests {
  private let problem = LeetCode756()

  struct TestCase: CustomTestStringConvertible {
    let bottom: String
    let allowed: [String]
    let expected: Bool
    var testDescription: String {
      "bottom: \(bottom), allowed: \(allowed) → \(expected)"
    }
  }

  @Test(arguments: [
    TestCase(bottom: "BCD", allowed: ["BCC", "CDE", "CEA", "FFF"], expected: true),
    TestCase(bottom: "AAAA", allowed: ["AAB", "AAC", "BCD", "BBE", "DEF"], expected: false),
    TestCase(bottom: "BCD", allowed: ["ACC", "ACB", "ABD", "DAA", "BDC", "BDB", "DBC", "BBD", "BBC", "DBD", "BCC", "CDD", "ABA", "BAB", "DDC", "CCD", "DDA", "CCA", "DDD"], expected: true),
    TestCase(bottom: "AFFFFA", allowed: ["ADA", "ADC", "ADB", "AEA", "AEC", "AEB", "AFA", "AFC", "AFB", "CDA", "CDC", "CDB", "CEA", "CEC", "CEB", "CFA", "CFC", "CFB", "BDA", "BDC", "BDB", "BEA", "BEC", "BEB", "BFA", "BFC", "BFB", "DAA", "DAC", "DAB", "DCA", "DCC", "DCB", "DBA", "DBC", "DBB", "EAA", "EAC", "EAB", "ECA", "ECC", "ECB", "EBA", "EBC", "EBB", "FAA", "FAC", "FAB", "FCA", "FCC", "FCB", "FBA", "FBC", "FBB", "DDA", "DDC", "DDB", "DEA", "DEC", "DEB", "DFA", "DFC", "DFB", "EDA", "EDC", "EDB", "EEA", "EEC", "EEB", "EFA", "EFC", "EFB", "FDA", "FDC", "FDB", "FEA", "FEC", "FEB", "FFA", "FFC", "FFB", "DDD", "DDE", "DDF", "DED", "DEE", "DEF", "DFD", "DFE", "DFF", "EDD", "EDE", "EDF", "EED", "EEE", "EEF", "EFD", "EFE", "EFF", "FDD", "FDE", "FDF", "FED", "FEE", "FEF", "FFD", "FFE", "FFF"], expected: false),
    TestCase(bottom: "ABCD", allowed: ["ABC", "BCA", "CDA", "ABD", "BCE", "CDF", "DEA", "EFF", "AFF"], expected: true),
  ])
  func test(_ testCase: TestCase) {
    let result = problem.pyramidTransition(testCase.bottom, testCase.allowed)
    #expect(result == testCase.expected)
  }
}
