void moveZeroes(List<int> nums) {
  int lastNonZeroIndex = 0;

  // 비-0 요소를 앞으로 옮기기
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[lastNonZeroIndex] = nums[i];
      lastNonZeroIndex++;
    }
  }

  // 남은 부분 0으로 채우기
  for (int i = lastNonZeroIndex; i < nums.length; i++) {
    nums[i] = 0;
  }
}

void main() {
  // 예시 1
  List<int> nums1 = [0, 1, 0, 3, 12];
  print("입력: nums = $nums1");
  moveZeroes(nums1);
  print("출력: $nums1");
  print("설명: 모든 0이 배열의 끝으로 이동하고, 나머지 숫자는 순서를 유지합니다.\n");

  // 예시 2
  List<int> nums2 = [0];
  print("입력: nums = $nums2");
  moveZeroes(nums2);
  print("출력: $nums2");
  print("설명: 배열에 0만 존재할 경우 변하지 않습니다.");
}