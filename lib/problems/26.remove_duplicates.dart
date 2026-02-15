class Solution {
  int removeDuplicates(List<int> nums) {
     int p1 = 0; 
     int p2 = 0; 
     int k = 1; 
     while(p2 < nums.length) {
        if(nums[p1] == nums[p2]) {
            p2++;
        }  else {
            if(p2-p1>=1) {
                p1++; 
                nums[p1] = nums[p2]; 
            }
            k++;
            p2++;
        }
     }
     
     return k; 
  }
}