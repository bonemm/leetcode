class SolutionV1 {
  List<String> uncommonFromSentences(String s1, String s2) {
  final freq = <String, int>{}; 
  for (final word in ("$s1 $s2").split(" ")) { 
    
      freq[word] = (freq[word] ?? 0) + 1; 
  } 
   return freq.entries.where((entry) => entry.value == 1).map((entry) => entry.key).toList(); }

  }


class SolutionV2 {
  List<String> uncommonFromSentences(String s1, String s2) {
     var map = <String, int>{};
     var listOfWords = [...s1.split(' '), ...s2.split(' ')];
     var res = <String>[];   
     for(var s in listOfWords){
        if(map[s]==null) {map[s]=1; }
        else {
          map[s] = (map[s] ?? 1) + 1;
        }
     }

     for(var e in map.entries){
        if(e.value==1) {
            res.add(e.key);
        }
     }

     return res;

  }
}