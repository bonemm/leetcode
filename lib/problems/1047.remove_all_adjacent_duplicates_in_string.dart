class Solution {
  String removeDuplicates(String s) {
    final stack = List<String>.filled(s.length, '', growable: false);
    int top = -1;

    for (int i = 0; i < s.length; i++) {
      final ch = s[i];

      if (top >= 0 && stack[top] == ch) {
        top--; 
      } else {
        stack[++top] = ch; 
      }
    }

    return stack.sublist(0, top + 1).join();
  }
}