import 'dart:collection';

class RecentCounter {
  final Queue<int> _queue = Queue<int>();

  RecentCounter();

  int ping(int t) {
    _queue.addLast(t);

    while (_queue.isNotEmpty && _queue.first < t - 3000) {
      _queue.removeFirst();
    }

    return _queue.length;
  }
}

void main() {
  final recentCounter = RecentCounter();

  print(recentCounter.ping(1)); // 출력: 1
  print(recentCounter.ping(100)); // 출력: 2
  print(recentCounter.ping(3001)); // 출력: 3
  print(recentCounter.ping(3002)); // 출력: 3
}
