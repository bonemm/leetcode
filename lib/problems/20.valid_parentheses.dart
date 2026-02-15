class Solution {
 bool isValid(String s) {
    
    List<String> brackets = []; 
    for(int i = 0; i < s.length; i++){
        if(s[i] == ')') {
            if(brackets.lastOrNull != '(') {
                return false;  
            } else {
                brackets.removeLast(); 
                continue;
            }
        }

         if(s[i] == '}') {
            if(brackets.lastOrNull != '{') {
                return false;  
            } else {
                brackets.removeLast(); 
                continue;
            }
        }

         if(s[i] == ']') {
            if(brackets.lastOrNull != '[') {
                return false;  
            } else {
                brackets.removeLast(); 
                continue;
            }
        }
         brackets.add(s[i]);
    }

    return brackets.isEmpty; 
  }
}