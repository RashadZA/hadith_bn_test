import 'package:hadith_bn_test/core/sever/hadith_database_helper.dart';
import 'package:sqflite/sqlite_api.dart';

class BooksTable {

  String books = 'books';
  String id = 'id';
  String title = 'title';
  String titleAR = 'title_ar';
  String numberOfHadis = 'number_of_hadis';
  String abvrCode = 'abvr_code';
  String bookName = 'book_name';
  String bookDescr = 'book_descr';
  String colorCode = 'color_code';

  Future getBooksList() async {
    Database db = await HadithDataBaseHelper().init();

    var result = await db.query(books);
    print('Get RepoListJson result: $result');
    return result;
  }

  Future deleteBooksList()async{
    Database db = await HadithDataBaseHelper().init();
    var result = await db.delete(books);
    print('Deleted RepoListJson result: $result');
  }

}