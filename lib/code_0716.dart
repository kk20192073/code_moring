void main() {
  List<int> example1 = [1, 7, 3, 6, 5, 6];
  List<int> example2 = [1, 2, 3];
  List<int> example3 = [2, 1, -1];

  print('pivotIndex(example1) → ${pivotIndex(example1)}');
  print('pivotIndex(example2) → ${pivotIndex(example2)}');
  print('pivotIndex(example3) → ${pivotIndex(example3)}');
}

int pivotIndex(List<int> nums) {
  int totalSum = nums.fold(0, (a, b) => a + b);
  int leftSum = 0;

  for (int i = 0; i < nums.length; i++) {
    int rightSum = totalSum - leftSum - nums[i];
    if (leftSum == rightSum) {
      return i;
    }
    leftSum += nums[i];
  }

  return -1;
}
