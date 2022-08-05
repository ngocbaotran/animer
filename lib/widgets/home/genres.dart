import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:animer/services/movie_service.dart';

class Genres extends StatefulWidget {
  @override
  _GenresState createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  List<String> genres = [];

  @override
  initState() {
    super.initState();
    getGenres();
  }

  Future<void> getGenres() async {
    genres = await fetchTrendingMovies();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                        elevation: 2,
                        shadowColor: Colors.white.withOpacity(0.8),
                        child: Image.network(
                          movies[index].thumb,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        left: 0,
                        child: Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.black87.withOpacity(0.8),
                                backgroundBlendMode: BlendMode.srcOver
                            ),
                            child: Center(
                              child: Text(
                                movies[index].name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )
                        ),
                      ),
                    ],
                  );
                },
                itemCount: movies == null ? 0 : 10,
                viewportFraction: 0.5,
                scale: 0.7,
                fade: 0.1
            ),
          )
        ],
      ),
    );
  }
}
