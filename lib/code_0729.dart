class Solution {
  void printMaxAverage(List<int> nums, int k) {
    int sum = 0;
    for (int i = 0; i < k; i++) {
      sum += nums[i];
    }

    int maxSum = sum;

    for (int i = k; i < nums.length; i++) {
      sum = sum - nums[i - k] + nums[i];
      if (sum > maxSum) {
        maxSum = sum;
      }
    }

    double maxAverage = maxSum / k;
    print('Max average: $maxAverage');
  }
}

void main() {
  Solution solution = Solution();
  solution.printMaxAverage([1, 12, -5, -6, 50, 3], 4);
}
