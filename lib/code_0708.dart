int tribonacci(int n) {
  if (n == 0) return 0;
  if (n == 1 || n == 2) return 1;

  int t0 = 0, t1 = 1, t2 = 1, t3 = 0;
  for (int i = 3; i <= n; i++) {
    t3 = t0 + t1 + t2;
    t0 = t1;
    t1 = t2;
    t2 = t3;
  }
  return t3;
}

void main() {
  int n1 = 4;
  print('입력: n = $n1');
  print('출력: ${tribonacci(n1)}');
  print('설명: T3까지 계산하면 [0, 1, 1, 2, 4]가 됩니다.\n');

  int n2 = 25;
  print('입력: n = $n2');
  print('출력: ${tribonacci(n2)}');
}
