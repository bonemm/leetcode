class Solution {
  String nextGreatestLetter(List<String> letters, String target) {
     
     int l = 0; 
     int r  = letters.length; 
     String ans = letters[0];
     while(l < r) {
        if(letters[(l+r)~/2].compareTo(target) > 0) {
            ans = letters[(l+r)~/2]; 
            r = (l+r)~/2;  
        } else {
            l = (l+r)~/2 + 1;
        }
     }

     return ans; 
  }
}