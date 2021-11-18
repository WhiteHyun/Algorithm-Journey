//
//  main.swift
//  boj
//
//  Created by 홍승현 on 2021/11/17.
//

import Foundation

let valueArray = readLine()!.components(separatedBy: " ").map { Int($0)! }
print(valueArray.reduce(0, +))
