import 'dart:io';

import 'package:animer/model/GenreModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider {
  DBProvider._();
  static final DBProvider db = DBProvider._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await initDB();
    return _database;
  }

  // Create AnimeDB database with Genre table
  initDB() async {
    // getApplicationDocumentsDirectory: trả về đường dẫn thư mục ứng dụng
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    // join: Tạo đường dẫn cụ thể
    String path = join(documentsDirectory.path, "AnimeDB.db");
    // openDatabase: Mở SQLite database
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {}, // onOpen: Viết code khi mở database
      // onCreate: Viết code khi database được tạo lần đầu
      onCreate: (Database db, int version) async {
        // db.execute: Thực thi truy vấn SQL
        await db.execute("CREATE TABLE Genre ("
          "id INTEGER PRIMARY KEY,"
          "type TEXT,"
          "name TEXT,"
          ")"
        );
      }
    );
  }

  Future<List<Genre>> getAllGenres() async {
    final db = await database;
    // Sử dụng phương thức truy vấn để lấy tất cả thông tin của genre.
    // Truy vấn cung cấp lối tắt để truy cập vào thông tin bảng
    // mà không phải viết toàn bộ truy vấn.
    // Phương thức truy vấn sẽ tạo truy vấn chính nó bằng việc sử dụng đầu vào
    // như columns, orderBy , ...
    List<Map> results = await db.query(
      "Genre", columns: Genre.columns, orderBy: "id ASC",
    );

    List<Genre> genres = new List();
    results.forEach((result) {
      // Sử dụng phương thức Genre’s fromMap để lấy chi tiết genre
      // bằng việc chạy vòng lặp các đối tượng
      Genre genre = Genre.fromMap(result);
      genres.add(genre);
    });
    return genres;
  }

  Future<int> insertGenres(List<Genre> genres) async {
    int result = 0;
    final db = await database;

    for (var genre in genres) {
      result = await db.insert('Genre', genre.toMap());
    }
    return result;
  }
}
