![algorithm](../algorithm.png)

## 문제 풀이 사이트별 자동화 스크립트 - (Swift)

> **Note**: 만약 사용하실 거면, chmod로 파일 실행 권한을 설정하셔야 합니다. `chmod +x 파일이름.sh`를 터미널에 입력한 뒤에 사용하세요 :)

### 백준

- BOJ에서[스크래핑을 공식적으로 허용하지 않고 있기 때문에](https://help.acmicpc.net/rule) API를 사용하여 파일을 자동생성합니다.
- 문제 번호를 제공하면 난이도에 따라 폴더가 만들어지고, 문제 번호를 파일명으로 하여 Swift 코드가 생성됩니다.

**사용법**

```bash
./boj.zsh 2805
```

### 프로그래머스

- 프로그래머스는 문제 링크를 그대로 붙여넣어도 되고, 번호만 넣어도 됩니다.
- 문제 제목을 파일명으로 하여 Swift 코드가 생성됩니다.

**사용법**

```bash
./pgs.zsh https://school.programmers.co.kr/learn/courses/30/lessons/72411
# 또는
./pgs.zsh 72411
```

### 리트코드(LeetCode)

|                                                                     실행 화면                                                                     |
| :-----------------------------------------------------------------------------------------------------------------------------------------------: |
| ![Screen Recording 2024-04-15 at 4 19 11 PM](https://github.com/WhiteHyun/Algorithm-Journey/assets/57972338/92e6a360-d83c-4c61-bfa1-7267f0a53693) |

- URL 또는 `title-slug`를 보내주시면 됩니다.
- 난이도(Easy, Medium, Hard)에 따라 폴더가 생성되고, 문제 제목을 파일명으로 하여 Swift 코드가 생성됩니다.

**사용법**

```bash
./leetcode.zsh https://leetcode.com/problems/word-ladder/description/
./leetcode.zsh word-ladder
```

## References

1. 기존에 스크래핑 했을 때 참고한 블로그: ~~[백준 새 문제 풀 때 귀찮은 점 해결해 봅시다](https://blog.potados.com/dev/create-new-boj-solution/)~~
2. 스크래핑 규칙: [백준 robots.txt](https://www.acmicpc.net/robots.txt)

- 쉘 스크립트 자동 폴더 및 파일 생성 출처: [solved.ac API](https://solvedac.github.io/unofficial-documentation/#/operations/searchProblem)
