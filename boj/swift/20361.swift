//
//  20361번: 일우는 야바위꾼
//  https://www.acmicpc.net/problem/20361
//
//  Created by WhiteHyun on 2021/11/20.
//

import Foundation

let inputArray: [Int] = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let cupCount: Int = inputArray[0]
var ballPosition: Int = inputArray[1]

for _ in 1...inputArray[2] {
    let cupArray: [Int] = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
    if ballPosition == cupArray[0] {
        ballPosition = cupArray[1]
    } else if ballPosition == cupArray[1] {
        ballPosition = cupArray[0]
    }
}

print(ballPosition)
