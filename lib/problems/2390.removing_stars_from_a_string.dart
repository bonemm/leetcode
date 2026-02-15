class Solution {
  String removeStars(String s) {
     int t = -1; 
     var stack = List<String>.filled(s.length, '', growable: false);

     for(int i = 0; i<s.length; i++) {
        if(s[i] == '*') {
            t--;
        } else {
            stack[++t] = s[i];
        }
     }

     return stack.sublist(0, t+1).join();
  }
}