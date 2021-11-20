//
//  1008번: A/B
//  https://www.acmicpc.net/problem/1008
//
//  Created by WhiteHyun on 2021/11/20.
//

import Foundation

let inputArray = readLine()!.components(separatedBy: " ").map { Double($0)! }
print(inputArray[0] / inputArray[1])
