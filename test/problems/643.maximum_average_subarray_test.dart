import 'package:test/test.dart';
import 'package:dart_leet/problems/643.maximum_average_subarray.dart';

void main() {
  final solution = Solution().findMaxAverage;

  group('should return maximum average subarray', () {

    test('first case', () {
      expect(solution([1,12,-5,-6,50,3], 4), 12.75000);
    });

    test('second case', () {
      expect(solution([-1,-2,-3,-4], 3), -2.0);
    });

    test('third case', () {
      expect(solution([5], 1), 5.0000);
    });

  });
}