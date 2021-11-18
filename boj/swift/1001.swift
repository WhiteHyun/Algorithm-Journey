//
// 1001번: A-B
// https://www.acmicpc.net/problem/1001
//
//  Created by WhiteHyun on 2021/11/18.
//

import Foundation

let array = readLine()!.components(separatedBy: " ").map{Int($0)!}
print(array[0] - array[1])
