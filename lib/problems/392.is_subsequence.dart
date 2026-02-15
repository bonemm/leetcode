class Solution {
  bool isSubsequence(String sub, String str) {
    
    int p = 0; 

    for(int i = 0; i<str.length; i++){
        if(p < sub.length && sub[p] == str[i]) {
            p++; 
        } 
    }

    return p == sub.length; 
  }
}