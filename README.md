![algorithm](algorithm.png)

# Algorithm-Journey

Swift로 알고리즘 문제를 풀이하고 관리하는 프로젝트입니다.

## LeetCode CLI

LeetCode 문제를 자동으로 가져와 Swift 파일을 생성하는 CLI 도구입니다.

### 주요 기능

- Daily Challenge 자동 가져오기
- 문제 slug 또는 URL로 특정 문제 가져오기
- Swift Testing 태그 자동 매핑
- Example 입력값 자동 채우기
- Xcode 프로젝트에 파일 자동 추가

### 사용법

프로젝트 루트 디렉토리에서 실행합니다.

```bash
# 오늘의 Daily Challenge 가져오기
make daily

# 특정 문제 가져오기
make fetch slug=two-sum
make fetch slug=https://leetcode.com/problems/two-sum/

# 도움말
make help
```

### 실행 화면

|                                                                     실행 화면                                                                     |
| :-----------------------------------------------------------------------------------------------------------------------------------------------: |
| ![Screen Recording 2024-04-15 at 4 19 11 PM](https://github.com/WhiteHyun/Algorithm-Journey/assets/57972338/92e6a360-d83c-4c61-bfa1-7267f0a53693) |

## 프로젝트 구조

```
Algorithm-Journey/
├── .env                      # 설정 파일
├── Makefile                  # Sugar API
├── Algorithm.xcodeproj/      # Xcode 프로젝트
├── Algorithm/                # 솔루션 파일
│   ├── LeetCode/
│   │   ├── Easy/
│   │   ├── Medium/
│   │   └── Hard/
│   └── Base/                 # 공통 자료구조 (Heap, Queue 등)
├── AlgorithmTests/           # 테스트 파일
│   └── LeetCode/
│       ├── Easy/
│       ├── Medium/
│       └── Hard/
└── LeetCodeCLI/              # Swift CLI 도구
```

## 설정 (.env)

```bash
NICKNAME=홍승현
XCODE_PROJECT_NAME=Algorithm
XCODE_MAIN_FOLDER=Algorithm
XCODE_UNIT_TEST_FOLDER=AlgorithmTests
```

## 생성되는 파일 예시

### 솔루션 파일

```swift
//
//  1. Two Sum.swift
//  https://leetcode.com/problems/two-sum/description/
//  Algorithm
//
//  Created by 홍승현 on 2025/12/13.
//

final class LeetCode1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    }
}
```

### 테스트 파일

```swift
import Testing

@Suite("1. Two Sum", .tags(.array, .hashTable))
struct LeetCode1Tests {
  private let problem = LeetCode1()

  @Test(arguments: [
    ([2,7,11,15], 9),
    ([3,2,4], 6),
    ([3,3], 6)
  ])
  func test(_ input: <#Type#>) {
    let result = problem.solution(input.0, input.1)
    #expect(result == <#Insert predicted value#>)
  }
}
```
