int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int k = 1;
  int count = 1;

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] == nums[i - 1]) {
      count++;
    } else {
      count = 1;
    }

    if (count <= 2) {
      nums[k] = nums[i];
      k++;
    }
  }

  // 필요 없는 뒤 요소 제거
  nums.length = k;
  return k;
}

void main() {
  List<int> nums = [1, 1, 1, 2, 2, 3];
  int k = removeDuplicates(nums);

  print('k = $k');
  print('Modified list: $nums');
}
