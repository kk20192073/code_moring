void main() {
  final Map<String, dynamic> student = {
    "name": "이만수",
    "grade": 3,
    "subject": "컴퓨터공학",
    "gpa": 3.8
  };

  print(
      '${student["name"]}는 ${student["grade"]}학년 ${student["subject"]}과 학생이며, 평점은 ${student["gpa"]} 입니다.');
}
