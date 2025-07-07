void main() {
  // 예제 1
  List<int> nums1 = [2, 2, 1];
  print('입력: nums = $nums1');
  print('출력: ${singleNumber(nums1)}\n');

  // 예제 2
  List<int> nums2 = [4, 1, 2, 1, 2];
  print('입력: nums = $nums2');
  print('출력: ${singleNumber(nums2)}\n');

  // 예제 3
  List<int> nums3 = [1];
  print('입력: nums = $nums3');
  print('출력: ${singleNumber(nums3)}');
}

int singleNumber(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num;
  }
  return result;
}
