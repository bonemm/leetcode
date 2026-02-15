class Solution {
  List<int> twoSum(List<int> numbers, int target) {
     
     for(int i = 0; i< numbers.length; i++){

        int l = i+1; 
        int r = numbers.length;
        int secNum = target - numbers[i];
        while(l<r) {
            int med = (l+r)~/2;

            if(numbers[med] == secNum) 
            {
                return [i+1, med+1];
            }

            if(numbers[med] < secNum) {
                l = med+1; 
            } else {r = med;}
        }
     }

     return [];
  }
}