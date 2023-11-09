class BooksModel {
  String id = "";
  String title = "";
  String titleAr = "";
  String numberOfHadis = "";
  String abvrCode = "";
  String bookName = "";
  String bookDescr = "";
  String colorCode = "";

  BooksModel(
      {required this.id,
        required this.title,
        required this.titleAr,
        required this.numberOfHadis,
        required this.abvrCode,
        required this.bookName,
        required this.bookDescr,
        required this.colorCode,});

  BooksModel.fromJsonToModel(Map<String, dynamic> json) {
    id = json['id'] != null ? json['id'].toString()  : "";
    title = json['title'] != null ? json['title'].toString()  : "";
    titleAr = json['title_ar'] != null ? json['title_ar'].toString()  : "";
    numberOfHadis = json['number_of_hadis'] != null ? json['number_of_hadis'].toString()  : "";
    abvrCode = json['abvr_code'] != null ? json['abvr_code'].toString()  : "";
    bookName = json['book_name'] != null ? json['book_name'].toString()  : "";
    bookDescr = json['book_descr'] != null ? json['book_descr'].toString()  : "";
    colorCode = json['color_code'] != null ? json['color_code'].toString()  : "";
  }

  Map<String, dynamic> fromMapToJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['title_ar'] = titleAr;
    data['number_of_hadis'] = numberOfHadis;
    data['abvr_code'] = abvrCode;
    data['book_name'] = bookName;
    data['book_descr'] = bookDescr;
    data['color_code'] = colorCode;
    return data;
  }
}