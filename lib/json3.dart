void main() {
  final Map<String, dynamic> company = {
    "name": "훈훈하니컴퍼니코리아",
    "employeeCount": 150,
    "address": {"street": "테헤란로 123", "city": "서울시 강남구", "zipCode": "06234"},
    "departments": ["대표팀", "개발팀", "디자인팀", "마케팅팀", "영업팀"]
  };

  String name = company["name"];
  int employeeCount = company["employeeCount"];
  Map<String, dynamic> address = company["address"];
  String fullAddress =
      '${address["city"]} ${address["street"]} (${address["zipCode"]})';

  List<String> departments = List<String>.from(company["departments"]);
  List<String> cleanedDepartments = departments;

  print('회사명: $name');
  print('직원 수: $employeeCount명');
  print('주소: $fullAddress');
  print('부서: ${cleanedDepartments.join(', ')}');
}
