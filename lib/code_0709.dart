class Solution {
  int majorityElement(List<int> nums) {
    int candidate = nums[0];
    int count = 1;

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] == candidate) {
        count++;
      } else {
        count--;
        if (count == 0) {
          candidate = nums[i];
          count = 1;
        }
      }
    }

    return candidate;
  }
}

void main() {
  final solution = Solution();

  List<List<int>> testCases = [
    [3, 2, 3],
    [2, 2, 1, 1, 1, 2, 2],
  ];

  for (var nums in testCases) {
    int result = solution.majorityElement(nums);
    int count = nums.where((n) => n == result).length;

    print('\t입력: nums = $nums');
    print('\t출력: $result');
    print('\t설명: $result이 배열에서 $count번 등장하여 배열의 절반 이상을 차지합니다.\n');
  }

  print('\t[2,2,3,1,1,1]');
}
