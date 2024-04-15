#
#  1. Two Sum
#  https://leetcode.com/problems/two-sum/
#  Version: Python 3.11.4
#
#  Created by WhiteHyun on 2023/06/24.
#


class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i in range(len(nums) - 1):
            for j in range(i + 1, len(nums)):
                if nums[i] + nums[j] == target:
                    return [i, j]
