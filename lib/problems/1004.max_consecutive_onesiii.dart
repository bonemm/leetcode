import 'dart:math';

class Solution {
  int longestOnes(List<int> nums, int k) {
    int start = 0;
    int zeroCount = 0;
    int res = 0;

    for (int end = 0; end < nums.length; end++) {
      if (nums[end] == 0) zeroCount++;

      while (zeroCount > k) {
        if (nums[start] == 0) zeroCount--;
        start++;
      }

      res = max(res, end - start + 1);
    }

    return res;
  }
}
