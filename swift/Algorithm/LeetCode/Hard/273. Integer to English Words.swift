//
//  273. Integer to English Words.swift
//  https://leetcode.com/problems/integer-to-english-words/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/07.
//

final class LeetCode273 {
  private let ones = ["", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
  private let teens = ["Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"]
  private let tens = ["", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
  private let thousands = ["", "Thousand", "Million", "Billion"]
  func numberToWords(_ num: Int) -> String {
    if num == 0 { return "Zero" }

    var result = ""
    var number = num
    var thousandIndex = 0

    while number > 0 {
      if number % 1000 != 0 {
        result = helper(number % 1000) + thousands[thousandIndex] + " " + result
      }
      number /= 1000
      thousandIndex += 1
    }

    return result.trimmingCharacters(in: .whitespaces)
  }

  private func helper(_ number: Int) -> String {
    if number == 0 { "" }
    else if number < 10 { ones[number] + " " }
    else if number < 20 { teens[number - 10] + " " }
    else if number < 100 { tens[number / 10] + " " + helper(number % 10) }
    else { ones[number / 100] + " Hundred " + helper(number % 100) }
  }
}
