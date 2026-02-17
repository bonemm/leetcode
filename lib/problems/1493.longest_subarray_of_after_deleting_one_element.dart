import 'dart:math';

class Solution {
  int longestSubarray(List<int> nums) {
    int start = 0;
    int zeroCount = 0;
    int res = 0;

    for (int end = 0; end < nums.length; end++) {
      if (nums[end] == 0) zeroCount++;

      while (zeroCount > 1) {
        if (nums[start] == 0) zeroCount--;
        start++;
      }

      res = max(res, end - start + 1) ;
    }

    return  res-1; 
  }
}