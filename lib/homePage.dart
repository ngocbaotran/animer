import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Anime'),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.pink[200], Colors.cyan],
                      stops: [0.5, 1.0]
                  )
              ),
          ),
        ),
      body: ListView(
        children: <Widget>[
          imageSlider(context),
          genresSlider(context)
        ],
      )
    );
  }
}

Widget imageSlider(context) {
  final imageList = [
    'assets/images/overlord-ss4.jpeg',
    'assets/images/one-piece.jpeg',
    'assets/images/naruto.jpeg',
    'assets/images/bleach.jpeg',
    'assets/images/my-hero-academia.png',
    'assets/images/one-punch-man.png',
    'assets/images/jujutsu-kaisen.jpeg',
    'assets/images/kimetsu-no-yaiba.jpeg',
    'assets/images/fairy-tail.jpeg',
    'assets/images/black-clover.jpeg',
  ];

  return Container(
    margin: EdgeInsets.symmetric(vertical: 10.0),
    constraints: BoxConstraints.expand(height: 320),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 8,
                shadowColor: Colors.grey,
                child: Image.asset(
                  imageList[index],
                  fit: BoxFit.fitHeight
                ),
              );
            },
            itemCount: 10,
            viewportFraction: 0.5,
            scale: 0.7,
            fade: 0.1
          ),
        )
      ],
    ),
  );
}

Widget genresSlider(context) {
  final genres = [
    'Action',
    'Adventure',
    'Comedy',
    'Fantasy',
    'Seinen',
    'Shounen',
    'Sports',
    'Hentai',
    'School',
    'Isekai',
  ];

  return Container(
    child: SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(genres.length, (index) {
            return Container(
              width: 120.0,
              height: 60.0,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: index % 2 != 0 ? [Colors.pink[200], Colors.pinkAccent]
                      : [Colors.cyan[200], Colors.cyanAccent],
                  stops: [0.5, 1.0],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    blurRadius: 5,
                    offset: Offset(5, 15),
                  ),
                ],
              ),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  genres[index],
                  style: TextStyle(
                    color: index % 2 != 0 ? Colors.white : Colors.black
                  )
                )
              )
            );
          })
      ),
    ),
  );
}
