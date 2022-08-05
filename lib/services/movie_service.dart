import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:animer/model/MovieModel.dart';

Future<List<MovieModel>> fetchTrendingMovies() async {
  final response = await http.get(
      Uri.parse("https://api.jikan.moe/v3/season")
  );
  Map data = jsonDecode(response.body);
  List _temp = [];

  for (var i in data['anime']) {
    _temp.add(i);
  }

  return MovieModel.movieSnapshot(_temp);
}

Future<List<MovieModel>> fetchGenres() async {
  final response = await http.get(
      Uri.parse("https://api.jikan.moe/v3/season")
  );
  Map data = jsonDecode(response.body);
  List _temp = [];

  for (var i in data['anime']) {
    _temp.add(i);
  }

  return MovieModel.movieSnapshot(_temp);
}
