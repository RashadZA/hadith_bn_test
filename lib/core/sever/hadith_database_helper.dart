
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;


class HadithDataBaseHelper {
  Database? _db;

  Future<Database> init() async {
    io.Directory applicationDirectory =
    await getApplicationDocumentsDirectory();

    String dbPathHadith =
    path.join(applicationDirectory.path, "hadith_bn_test.db");

    bool dbExistsHadith = await io.File(dbPathHadith).exists();

    if (!dbExistsHadith) {
      // Copy from asset
      ByteData data = await rootBundle.load("assets/hadith_bn_test.db");
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await io.File(dbPathHadith).writeAsBytes(bytes, flush: true);
    }

    return await openDatabase(dbPathHadith);
  }

}