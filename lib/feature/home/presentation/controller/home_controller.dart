import 'package:get/get.dart';
import 'package:hadith_bn_test/feature/home/data/datasources/books_table.dart';
import 'package:hadith_bn_test/feature/home/data/models/books_model.dart';

class HomeController extends GetxController {

  RxList<BooksModel> booksList = <BooksModel>[].obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    List books = await BooksTable().getBooksList();
    update();
    for(Map<String, dynamic> book in books){
      booksList.add(BooksModel.fromJsonToModel(book));
    }
    update();
  }

}