class ChapterModel {
  String id = "";
  String chapterId = "";
  String title = "";
  String hadisRange = "";
  String number = "";

  ChapterModel({
    required this.id,
    required this.chapterId,
    required this.title,
    required this.hadisRange,
    required this.number,
  });

  ChapterModel.fromJsonToMap(Map<String, dynamic> json) {
    id = json['id'] != null ? json['id'] as String  : "";
    chapterId = json['chapter_id'] != null ? json['chapter_id']  as String  : "";
    title = json['title'] != null ? json['title'] as String  : "";
    hadisRange = json['hadis_range'] != null ? json['hadis_range'] as String  : "";
    number = json['number'] != null ? json['number'] as String  : "";
  }

  Map<String, dynamic> fromMapToJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['chapter_id'] = chapterId;
    data['title'] = title;
    data['hadis_range'] = hadisRange;
    data['number'] = number;
    return data;
  }
}
