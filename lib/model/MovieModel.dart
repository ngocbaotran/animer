import 'package:flutter/material.dart';

class MovieModel {
  int id;
  String name;
  dynamic rating;
  String thumb;

  MovieModel({
    @required this.id,
    @required this.name,
    @required this.rating,
    @required this.thumb,
  });

  MovieModel.fromJson(Map<String, dynamic> json) {
    id = json['mal_id'];
    name = json['title'];
    rating = json['score'];
    thumb = json['image_url'];
  }

  static List<MovieModel> movieSnapshot(List snapshot) {
    return snapshot.map((data) {
      return MovieModel.fromJson(data);
    }).toList();
  }
}
