import 'package:hadith_bn_test/core/sever/hadith_database_helper.dart';
import 'package:sqflite/sqlite_api.dart';

class ChapterTable {

  String chapter = 'chapter';
  String id = 'id';
  String chapter_id = 'chapter_id';
  String book_id = 'book_id';
  String title = 'title';
  String number = 'number';
  String hadis_range = 'hadis_range';
  String book_name = 'book_name';

  Future getAllChapterList() async {
    Database db = await HadithDataBaseHelper().init();

    var result = await db.query(chapter);
    return result;
  }

  Future getChapterListAccordingToBookID({required String bookID}) async {
    Database db = await HadithDataBaseHelper().init();

    dynamic result = await db.query(chapter,orderBy: "$chapter_id ASC", where: "$book_id = $bookID");
    return result;
  }

  Future deleteChapterList()async{
    Database db = await HadithDataBaseHelper().init();
     await db.delete(chapter);
  }

}