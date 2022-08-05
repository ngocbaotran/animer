import 'package:flutter/material.dart';

class Genre {
  int id;
  String type;
  String name;
  static final columns = ["id", "type", "name"];

  Genre({
    @required this.id,
    @required this.type,
    @required this.name
  });

  // fromMap dùng để chuyển đổi dữ liệu map trong đối tượng GenreModel.
  factory Genre.fromMap(Map<String, dynamic> data) {
    return Genre(
      id: data['id'],
      type: data['type'],
      name: data['name']
    );
  }

  // toMap để chuyển đổi đối tượng product vào Map.
  Map<String, dynamic> toMap() => {
    "id": id,
    "type": type,
    "name": name
  };
}
