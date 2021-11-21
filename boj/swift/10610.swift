//
//  10610번: 30
//  https://www.acmicpc.net/problem/10610
//
//  Created by WhiteHyun on 2021/11/21.
//

let number = readLine()!
let numberArray = number.sorted().reversed().map { String($0) }
if !numberArray.contains("0") || numberArray.map({ Int($0)! }).reduce(0, +) % 3 != 0 {
    print(-1)
} else {
    print(numberArray.joined())
}
