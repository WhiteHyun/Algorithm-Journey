//
//  1000번: A+B
//  https://www.acmicpc.net/problem/1000
//
//  Created by WhiteHyun on 2021/11/18.
//

import Foundation

let valueArray = readLine()!.components(separatedBy: " ").map { Int($0)! }
print(valueArray.reduce(0, +))
