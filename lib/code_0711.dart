String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) return '';

  String prefix = strs[0];

  for (int i = 1; i < strs.length; i++) {
    while (!strs[i].startsWith(prefix)) {
      prefix = prefix.substring(0, prefix.length - 1);
      if (prefix.isEmpty) return '';
    }
  }

  return prefix;
}

void main() {
  List<String> param_1 = ['flower', 'flow', 'flight'];
  String ret = longestCommonPrefix(param_1);
  print(ret); // 출력: fl
}
