import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.black87,
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
          genresSlider(context),
          movieList(context)
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                ),
                elevation: 3,
                shadowColor: Colors.white,
                child: Image.asset(
                  imageList[index],
                  fit: BoxFit.fitHeight
                ),
              );
            },
            itemCount: imageList.length,
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
  final List<String> genres = <String>[
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
                    color: Colors.black45.withOpacity(0.8),
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

Widget movieList(context) {
  final list = [
    {
      'title': 'mới cập nhật',
      'movies': [
        {
          'name': 'Overlord',
          'thumb': 'assets/images/overlord-ss4.jpeg'
        },
        {
          'name': 'One Piece',
          'thumb': 'assets/images/one-piece.jpeg'
        },
        {
          'name': 'Naruto Shippuden',
          'thumb': 'assets/images/naruto.jpeg'
        },
        {
          'name': 'Bleach',
          'thumb': 'assets/images/bleach.jpeg'
        },
        {
          'name': 'My Hero Academia',
          'thumb': 'assets/images/my-hero-academia.png'
        },
        {
          'name': 'One Punch Man',
          'thumb': 'assets/images/one-punch-man.png'
        },
        {
          'name': 'Jujutsu Kaisen',
          'thumb': 'assets/images/jujutsu-kaisen.jpeg'
        },
        {
          'name': 'Kimetsu no Yaiba',
          'thumb': 'assets/images/kimetsu-no-yaiba.jpeg'
        },
        {
          'name': 'Fairy Tail',
          'thumb': 'assets/images/fairy-tail.jpeg'
        },
        {
          'name': 'Black Clover',
          'thumb': 'assets/images/black-clover.jpeg'
        },
      ]
    },
    {
      'title': 'sắp chiếu',
      'movies': [
        {
          'name': 'Overlord',
          'thumb': 'assets/images/overlord-ss4.jpeg'
        },
        {
          'name': 'One Piece',
          'thumb': 'assets/images/one-piece.jpeg'
        },
        {
          'name': 'Naruto Shippuden',
          'thumb': 'assets/images/naruto.jpeg'
        },
        {
          'name': 'Bleach',
          'thumb': 'assets/images/bleach.jpeg'
        },
        {
          'name': 'My Hero Academia',
          'thumb': 'assets/images/my-hero-academia.png'
        },
        {
          'name': 'One Punch Man',
          'thumb': 'assets/images/one-punch-man.png'
        },
        {
          'name': 'Jujutsu Kaisen',
          'thumb': 'assets/images/jujutsu-kaisen.jpeg'
        },
        {
          'name': 'Kimetsu no Yaiba',
          'thumb': 'assets/images/kimetsu-no-yaiba.jpeg'
        },
        {
          'name': 'Fairy Tail',
          'thumb': 'assets/images/fairy-tail.jpeg'
        },
        {
          'name': 'Black Clover',
          'thumb': 'assets/images/black-clover.jpeg'
        },
      ]
    },
    {
      'title': 'đề cử',
      'movies': [
        {
          'name': 'Overlord',
          'thumb': 'assets/images/overlord-ss4.jpeg'
        },
        {
          'name': 'One Piece',
          'thumb': 'assets/images/one-piece.jpeg'
        },
        {
          'name': 'Naruto Shippuden',
          'thumb': 'assets/images/naruto.jpeg'
        },
        {
          'name': 'Bleach',
          'thumb': 'assets/images/bleach.jpeg'
        },
        {
          'name': 'My Hero Academia',
          'thumb': 'assets/images/my-hero-academia.png'
        },
        {
          'name': 'One Punch Man',
          'thumb': 'assets/images/one-punch-man.png'
        },
        {
          'name': 'Jujutsu Kaisen',
          'thumb': 'assets/images/jujutsu-kaisen.jpeg'
        },
        {
          'name': 'Kimetsu no Yaiba',
          'thumb': 'assets/images/kimetsu-no-yaiba.jpeg'
        },
        {
          'name': 'Fairy Tail',
          'thumb': 'assets/images/fairy-tail.jpeg'
        },
        {
          'name': 'Black Clover',
          'thumb': 'assets/images/black-clover.jpeg'
        },
      ]
    },
    {
      'title': 'tin tức',
      'movies': [
        {
          'name': 'Overlord',
          'thumb': 'assets/images/overlord-ss4.jpeg'
        },
        {
          'name': 'One Piece',
          'thumb': 'assets/images/one-piece.jpeg'
        },
        {
          'name': 'Naruto Shippuden',
          'thumb': 'assets/images/naruto.jpeg'
        },
        {
          'name': 'Bleach',
          'thumb': 'assets/images/bleach.jpeg'
        },
        {
          'name': 'My Hero Academia',
          'thumb': 'assets/images/my-hero-academia.png'
        },
        {
          'name': 'One Punch Man',
          'thumb': 'assets/images/one-punch-man.png'
        },
        {
          'name': 'Jujutsu Kaisen',
          'thumb': 'assets/images/jujutsu-kaisen.jpeg'
        },
        {
          'name': 'Kimetsu no Yaiba',
          'thumb': 'assets/images/kimetsu-no-yaiba.jpeg'
        },
        {
          'name': 'Fairy Tail',
          'thumb': 'assets/images/fairy-tail.jpeg'
        },
        {
          'name': 'Black Clover',
          'thumb': 'assets/images/black-clover.jpeg'
        },
      ]
    }
  ];

  return Container(
    padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
    child: ListView.builder(
      itemCount: list.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
          elevation: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  list[index]['title'].toString().toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'MonteSerrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: moviesMaker(list[index]['movies']),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}

moviesMaker(list) {
  final children = <Widget>[];
  for (var i = 0; i < list.length; i++) {
    children.add(
      Container(
        width: 150.0,
        height: 200.0,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Image.asset(
                  list[i]['thumb'],
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Text(
              list[i]['name'],
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        )
      )
    );
  }
  return children;
}
