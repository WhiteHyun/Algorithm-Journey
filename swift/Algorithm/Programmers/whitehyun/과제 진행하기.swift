//
//  과제 진행하기
//  https://school.programmers.co.kr/learn/courses/30/lessons/176962
//
//  Created by whitehyun on 2023/05/10.
//

import Foundation

struct Number176962 {
  struct Homework {
    /// 과제 제목
    let subject: String

    /// 시작 시간
    let startTime: Int

    /// 소요 시간
    var duration: Int
  }

  func solution(_ plans: [[String]]) -> [String] {
    let sortedPlans: [Homework] = plans
      .map {
        let times = $0[1].components(separatedBy: ":").map { Int($0)! }
        return .init(subject: $0[0], startTime: times[0] * 60 + times[1], duration: Int($0[2])!)
      }
      .sorted { $0.startTime > $1.startTime }

    var answer = [String]() // 끝난 순대로 들어갈 과제 제목 리스트
    var storageStack = [Homework]() // 진행중이었던 과제
    var processStack = sortedPlans // 앞으로 진행할 과제
    var nowTime = sortedPlans.last!.startTime // 현재 가리키는 시간

    while var newTask = processStack.popLast() {
      let nextTaskStartTime = processStack.last?.startTime ?? Int.max
      let timeRemaining = nextTaskStartTime - nowTime // 남은 시간

      // 과제 진행 시간이 부족한 경우
      if timeRemaining < newTask.duration {
        newTask.duration -= timeRemaining
        nowTime = nextTaskStartTime
        storageStack.append(newTask)
        continue
      }

      answer.append(newTask.subject)
      nowTime += newTask.duration // 지금 하고 있는 과제를 끝냄

      // 미뤄둔 과제는 없고 다가올 과제만 하염없이 기다리는 경우
      if !processStack.isEmpty, storageStack.isEmpty {
        nowTime = nextTaskStartTime // 시작 시간이 될 때까지 기다림
        continue
      }

      while var progressedTask = storageStack.popLast() {
        let nextTaskStartTime = processStack.last?.startTime ?? Int.max
        let timeRemaining = nextTaskStartTime - nowTime // 남은 시간

        // 앞으로 진행할 과제가 더 있고, 마저 과제를 마무리 하지 못하고 그만두어야하는 경우
        if timeRemaining < progressedTask.duration {
          progressedTask.duration -= timeRemaining
          nowTime += timeRemaining
          storageStack.append(progressedTask)
          break
        }

        // 다가오는 과제가 없거나, 미뤄둔 과제가 존재한다면
        nowTime += progressedTask.duration // 지금 하고 있는 과제를 끝냄
        answer.append(progressedTask.subject)

        // 미뤄둔 과제는 없고 다가올 과제만 하염없이 기다리는 경우
        if !processStack.isEmpty, storageStack.isEmpty {
          nowTime = processStack.last!.startTime // 시작 시간이 될 때까지 기다림
          break
        }
      }
    }

    return answer
  }
}
