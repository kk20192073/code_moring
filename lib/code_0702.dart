int lengthOfLastWord(String s) {
  var splitString = s.trim().split(' ');
  return splitString.last.length;
}

void main() {
  String input1 = "Hello World";
  int output1 = lengthOfLastWord(input1);
  print('입력: "$input1"');
  print('출력: $output1');
  print('설명: "World"는 길이가 5입니다.\n');

  String input2 = " fly me to the moon ";
  int output2 = lengthOfLastWord(input2);
  print('입력: "$input2"');
  print('출력: $output2');
  print('설명: "moon"의 길이는 4입니다.');
}
