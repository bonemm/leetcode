class Solution {
  int minSubArrayLen(int target, List<int> nums) {
    int start = 0;
    int windowState = 0;
    int res = nums.length + 1;

    for (int i = 0; i < nums.length; i++) {
      windowState += nums[i];

      if (windowState >= target) {
        while (start <= i && windowState >= target) {
          res = res < (i - start + 1) ? res : (i - start + 1);
          windowState -= nums[start++];
        }
      }
    }

    return res != nums.length + 1 ? res : 0;
  }
}
