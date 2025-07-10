int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int j = 0;
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] != nums[j]) {
      j++;
      nums[j] = nums[i];
    }
  }
  return j + 1;
}

void main() {
  List<List<int>> testCases = [
    [1, 1, 2],
    [0, 0, 1, 1, 1, 2, 2, 3, 3, 4],
  ];

  for (var nums in testCases) {
    int len = removeDuplicates(nums);
    print('입력: nums = ${nums}');
    print('출력: $len');
    print('설명: 중복 제거 배열: ${nums.sublist(0, len)}\n');
  }
}
