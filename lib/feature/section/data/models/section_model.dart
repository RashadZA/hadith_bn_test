class SectionModel {
  String id = "";
  String bookId = "";
  String bookName = "";
  String chapterId = "";
  String sectionId = "";
  String title = "";
  String preface = "";
  String number = "";
  String sortOrder = "";

  SectionModel(
      {required this.id,
        required this.bookId,
        required this.bookName,
        required this.chapterId,
        required this.sectionId,
        required this.title,
        required this.preface,
        required this.number,
        required this.sortOrder});

  SectionModel.fromJsonToModel(Map<String, dynamic> json) {
    id = json['id'] != null ? json['id'].toString()  : "";
    bookId = json['book_id'] != null ? json['book_id'].toString()  : "";
    bookName = json['book_name'] != null ? json['book_name'].toString()  : "";
    chapterId = json['chapter_id'] != null ? json['chapter_id'].toString()  : "";
    sectionId = json['section_id'] != null ? json['section_id'].toString()  : "";
    title = json['title'] != null ? json['title'].toString()  : "";
    preface = json['preface'] != null ? json['preface'].toString()  : "";
    number = json['number'] != null ? json['number'].toString()  : "";
    sortOrder = json['sort_order'] != null ? json['sort_order'].toString()  : "";
  }

  Map<String, dynamic> fromMapToJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['book_id'] = bookId;
    data['book_name'] = bookName;
    data['chapter_id'] = chapterId;
    data['section_id'] = sectionId;
    data['title'] = title;
    data['preface'] = preface;
    data['number'] = number;
    data['sort_order'] = sortOrder;
    return data;
  }
}