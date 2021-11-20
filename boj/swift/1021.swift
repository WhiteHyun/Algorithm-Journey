//
//  1021번: 회전하는 큐
//  https://www.acmicpc.net/problem/1021
//
//  Created by WhiteHyun on 2021/11/20.
//

import Foundation


let size: Int = Int(readLine()!.components(separatedBy: " ")[0])!
let inputArray: [Int] = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var dequeArray: [Int] = [Int](1...size) // 여기서 size는 10

var position: Int = 0 // 덱의 위치 (인덱스)
var minimum: Int = 0

for number in inputArray {
    
    let index: Int = dequeArray.firstIndex(of: number)!
    minimum += min(abs(position - index), dequeArray.count - abs(position - index))
    position = dequeArray.count == index ? 0 : index
    dequeArray.remove(at: index)
}

print(minimum)
