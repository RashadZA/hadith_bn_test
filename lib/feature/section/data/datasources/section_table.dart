import 'package:hadith_bn_test/core/sever/hadith_database_helper.dart';
import 'package:sqflite/sqlite_api.dart';

class SectionTable {

  String section = 'section';
  String id = 'id';
  String bookId = "book_id ";
  String bookName = 'book_name';
  String chapterId = 'chapter_id';
  String sectionId = 'color_code';
  String title = 'title';
  String preface = "preface";
  String number = "number";
  String sortOrder = "sort_order";

  Future getSectionList() async {
    Database db = await HadithDataBaseHelper().init();

    dynamic result = await db.query(section);
    return result;
  }

  Future deleteSectionList()async{
    Database db = await HadithDataBaseHelper().init();
    await db.delete(section);
  }

}