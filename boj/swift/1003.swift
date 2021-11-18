//
//  1003번: 피보나치 함수
//  https://www.acmicpc.net/problem/1003
//
//  Created by WhiteHyun on 2021/11/18.
//

import Foundation

var callZero: [Int] = [Int](repeating: 0, count: 41)
var callOne: [Int] = [Int](repeating: 0, count: 41)

callZero[0] = 1
callOne[1] = 1

let count: Int = Int(readLine()!)! // 횟수 입력

//40이 최대 입력크기임.
for i in 2...40 {
    callOne[i] = callOne[i-1] + callOne[i-2]
    callZero[i] = callZero[i-1] + callZero[i-2]
}


// 주어진 횟수만큼 반복
for _ in 0..<count {
    let goalNumber: Int = Int(readLine()!)!
    print(callZero[goalNumber], callOne[goalNumber])
}
