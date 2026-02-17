import 'dart:math';

class Solution {
  double findMaxAverage(List<int> nums, int k) {
     
     int start = 0; 
     double windowState = 0;
     double maxSub = -double.infinity;

     for(int i = 0; i< nums.length; i++) {

        windowState+= nums[i];

        if(i-start+1 == k) {
            maxSub = max(maxSub, windowState);
            windowState-=nums[start];
            start++;
        }
     }

     return maxSub/k;
  }
}

//without doubles
class Solution2 {

  double findMaxAverage(List<int> nums, int k) {
  int windowSum = 0;

  // Initialize the first window
  for (int i = 0; i < k; i++) {
    windowSum += nums[i];
  }

  int maxSum = windowSum;

  // Slide the window
  for (int i = k; i < nums.length; i++) {
    windowSum += nums[i] - nums[i - k];
    if (windowSum > maxSum) {
      maxSum = windowSum;
    }
  }

  return maxSum / k;
}

}