void main() {
  Solution sol = Solution();

  print(sol.strStr('hello', 'll')); // 출력: 2
  print(sol.strStr('aaaaa', 'bba')); // 출력: -1
  print(sol.strStr('abc', '')); // 출력: 0 (빈 문자열)
}

class Solution {
  int strStr(String haystack, String needle) {
    int index = haystack.indexOf(needle);
    return index; // 없으면 -1, 있으면 위치 반환
  }
}
