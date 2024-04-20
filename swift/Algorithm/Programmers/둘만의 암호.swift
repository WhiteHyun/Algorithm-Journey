//
//  둘만의 암호
//  https://school.programmers.co.kr/learn/courses/30/lessons/155652
//
//  Created by whitehyun on 2023/02/15.
//

import Foundation

final class ProgrammersSolution155652 {
  func solution(_ string: String, _ skip: String, _ index: Int) -> String {
    let indexArray = Array(97 ... 122).map { String(UnicodeScalar($0)) }.filter { !skip.contains($0) }

    return string.map {
      let index = (indexArray.firstIndex(of: String($0))! + index) % indexArray.count
      return indexArray[index]
    }
    .joined()
  }
}
