import 'dart:math';

class Solution {
  int totalFruit(List<int> fruits) {
    final count = <int, int>{};
    int start = 0, maxLen = 0;

    for (int end = 0; end < fruits.length; end++) {
      count.update(fruits[end], (v) => v + 1, ifAbsent: () => 1);

      while (count.length > 2) {
        final fruit = fruits[start];
        count[fruit] = count[fruit]! - 1;
        if (count[fruit] == 0) count.remove(fruit);
        start++;
      }

      maxLen = max(maxLen, end - start + 1);
    }

    return maxLen;
  }
}
