import 'dart:math';

class Solution {
  int maxArea(List<int> height) {
    
    int res = 0; 
    int l = 0; 
    int r = height.length-1;

    while(l<r) {
        res = max(res, (r-l)*min(height[l], height[r]));
        if(height[l] <= height[r]) {
            l++; 
        } else {
          r--;
        }    
  }
   return res; 
}
}