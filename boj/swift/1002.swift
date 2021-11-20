//
//  1002번: 터렛
//  https://www.acmicpc.net/problem/1002
//
//  Created by WhiteHyun on 2021/11/18.
//

import Foundation

func process(turretArray: [Int]) -> Int {
    let distance = pow(Double(turretArray[3] - turretArray[0]), 2) + pow(Double(turretArray[4] - turretArray[1]), 2)
    let radiusAdd = pow(Double(turretArray[2] + turretArray[5]), 2)
    let radiusSub = pow(Double(turretArray[2] - turretArray[5]), 2)
    
    if distance == 0 && turretArray[2] == turretArray[5] {
        return -1
    } else if distance == radiusAdd || distance == radiusSub {
        return 1
    } else if distance > radiusAdd || distance < radiusSub {
        return 0
    } else { // distance < radiusAdd || distance > radiusSub
        return 2
    }
}

let count: Int = Int(readLine()!)!

for _ in 0..<count {
    let turret: [Int] = readLine()!.components(separatedBy: " ").map { Int($0)! }
    print(process(turretArray: turret))
}
