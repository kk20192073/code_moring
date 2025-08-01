void main() {
  final Map<String, dynamic> book = {
    "title": "Flutter 완벽(할까?) 가이드",
    "price": 35000,
    "authors": [
      "이샘",
      "김영민",
      "김영호",
      "동세진",
      "문현선",
      "오재욱",
      "윤한조",
      "이상록",
      "이영상",
      "임기환",
      "임우형",
      "임초희",
      "정소린",
      "조민우"
    ],
    "pages": 520
  };

  String title =
      book["title"].toString().replaceAll(RegExp(r'\(.*?\)|\?.\?'), '').trim();
  String price =
      '${book["price"].toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (match) => '${match[1]},')}원';
  List<String> authors = List<String>.from(book["authors"]);
  int totalAuthors = authors.length;
  String pages = '${book["pages"]} 페이지';

  print('책제목 : $title');
  print('가격 : $price');
  print('저자 : ${authors.join(', ')} / 총 $totalAuthors 명');
  print('페이지 : $pages');
}
