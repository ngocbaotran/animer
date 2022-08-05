import 'package:animer/model/MovieModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:animer/services/movie_service.dart';

class MovieSlider extends StatefulWidget {
  @override
  _MovieSliderState createState() => _MovieSliderState();
}

class _MovieSliderState extends State<MovieSlider> {
  List<MovieModel> movies;

  @override
  initState() {
    super.initState();
    getTrendingMovies();
  }

  Future<void> getTrendingMovies() async {
    movies = await fetchTrendingMovies();
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
                        top: 0,
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
