//
//  2699. Modify Graph Edge Weights.swift
//  https://leetcode.com/problems/modify-graph-edge-weights/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/30.
//

final class LeetCode2699 {
  func modifiedGraphEdges(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int, _ target: Int) -> [[Int]] {
    var adjacencyList = Array(repeating: [(Int, Int)](), count: n)
    for (i, edge) in edges.enumerated() {
      adjacencyList[edge[0]].append((edge[1], i))
      adjacencyList[edge[1]].append((edge[0], i))
    }

    var distances = Array(repeating: [Double.infinity, Double.infinity], count: n)
    distances[source][0] = 0
    distances[source][1] = 0

    var mutableEdges = edges

    dijkstra(adjacencyList: adjacencyList, edges: &mutableEdges, distances: &distances, source: source, difference: 0, run: 0)
    let difference = Double(target) - distances[destination][0]

    if difference < 0 {
      return []
    }

    dijkstra(adjacencyList: adjacencyList, edges: &mutableEdges, distances: &distances, source: source, difference: difference, run: 1)

    if distances[destination][1] < Double(target) {
      return []
    }

    for i in 0 ..< mutableEdges.count {
      if mutableEdges[i][2] == -1 {
        mutableEdges[i][2] = 1
      }
    }

    return mutableEdges
  }

  func dijkstra(adjacencyList: [[(Int, Int)]], edges: inout [[Int]], distances: inout [[Double]], source: Int, difference: Double, run: Int) {
    var priorityQueue = Heap<(Double, Int)> { $0.0 < $1.0 }
    priorityQueue.insert((0, source))
    distances[source][run] = 0

    while let (currentDistance, currentNode) = priorityQueue.remove() {
      if currentDistance > distances[currentNode][run] {
        continue
      }

      for (nextNode, edgeIndex) in adjacencyList[currentNode] {
        var weight = Double(edges[edgeIndex][2])
        if weight == -1 {
          weight = 1
        }
        if run == 1, edges[edgeIndex][2] == -1 {
          let newWeight = difference + distances[nextNode][0] - distances[currentNode][1]
          if newWeight > weight {
            edges[edgeIndex][2] = Int(newWeight)
            weight = newWeight
          }
        }

        if distances[nextNode][run] > distances[currentNode][run] + weight {
          distances[nextNode][run] = distances[currentNode][run] + weight
          priorityQueue.insert((distances[nextNode][run], nextNode))
        }
      }
    }
  }
}
