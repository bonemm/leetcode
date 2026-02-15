import 'package:dart_leet/problems/744.greater_then_target.dart';
import 'package:test/test.dart';

void main() {
  
  final solution = Solution().nextGreatestLetter;

  group('should return next lexicographically greater then target', (){
     
     test('first case', (){
        var letters = ["c","f","j"]; 
        var target = "a";

        expect(solution(letters, target), equals('c')); 
     });

     test('second case', (){
        var letters = ["c","f","j"]; 
        var target = "c";

        expect(solution(letters, target), equals('f')); 
     });

     test('third case', (){
        var letters = ["x","x","y","y"]; 
        var target = "z";

        expect(solution(letters, target), equals('x')); 
     });
  });
}