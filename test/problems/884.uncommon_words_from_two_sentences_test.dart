import 'package:dart_leet/problems/884.uncommon_words_from_two_sentences.dart';
import 'package:test/test.dart';

void main() {


  group('should return uncommon words', (){

    final f1 = SolutionV1().uncommonFromSentences; 
    final f2 = SolutionV2().uncommonFromSentences;  

    test('first case', (){
      String s1 = "this apple is sweet"; 
      String s2 = "this apple is sour"; 
    
      expect(f1(s1,s2), equals(["sweet","sour"]));
      expect(f2(s1,s2), equals(["sweet","sour"]));
    });

     test('second case', (){
      String s1 = "apple apple"; 
      String s2 = "banana"; 
    
      expect(f1(s1,s2), equals(["banana"]));
      expect(f2(s1,s2), equals(["banana"]));
    });

  });
}