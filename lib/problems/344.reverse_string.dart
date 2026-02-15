class Solution {
  void reverseString(List<String> s) {
    

    int l = 0; 
    int r = s.length-1; 

    while(l<r) {
       var t = s[r];
       s[r] = s[l]; 
       s[l] = t;  
       l++;
       r--;
    }

  }
}