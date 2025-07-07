class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    List<String> sortedS = s.split('')..sort();
    List<String> sortedT = t.split('')..sort();

    return sortedS.join() == sortedT.join();
  }
}

void printResult(String s, String t, Solution solution) {
  bool result = solution.isAnagram(s, t);
  print('입력: s = "$s", t = "$t"');
  print('출력: $result');
  if (result) {
    print('설명: t는 s의 애너그램입니다.\n');
  } else {
    print('설명: t는 s의 애너그램이 아닙니다.\n');
  }
}

void main() {
  Solution solution = Solution();

  printResult("anagram", "nagaram", solution);
  printResult("rat", "car", solution);
}
