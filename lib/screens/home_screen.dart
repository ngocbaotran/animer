import 'package:animer/widgets/movie_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        children: <Widget>[
          MovieSlider(),
          searchInput(),
          genres(context),
          movieList(context)
        ],
      )
    );
  }
}

Widget genres(context) {
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
                height: 30.0,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: index % 2 != 0 ? [Colors.pink[200], Colors.pinkAccent]
                          : [Colors.cyan[200], Colors.green],
                      stops: [0.5, 1.0],
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.8),
                      blurRadius: 5,
                      offset: Offset(3, 15),
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

Widget searchInput() {
  return Container(
    margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
    child: Row(
      children: <Widget>[
        Expanded(
            child: TextField(
              style: TextStyle(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search Anime',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.white
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 0,
                ),
              ),
            )
        )
      ],
    ),
  );
}

Widget movieList(context) {
  final list = [
    {
      'title': 'update',
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
      'title': 'coming soon',
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
      'title': 'trending',
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
        height: 230.0,
        margin: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Stack(
                fit: StackFit.passthrough,
                children: <Widget>[
                  Image.asset(
                    list[i]['thumb'],
                    fit: BoxFit.fitHeight,
                  ),
                  Positioned(
                    left: 0.0,
                    top: 10.0,
                    child: Container(
                      child: tag(),
                    ),
                  ),
                  Positioned(
                    right: 3.0,
                    top: 5.0,
                    child: Container(
                      child: episode(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              list[i]['name'],
              style: TextStyle(
                color: Colors.white,
                fontSize: 15
              ),
            ),
          ],
        )
      )
    );
  }
  return children;
}

Widget tag() {
  return Container(
    padding: const EdgeInsets.only(
      top: 3.0,
      right: 6.0,
      bottom: 3.0,
      left: 3.0
    ),
    decoration: BoxDecoration(
      color: Colors.black45,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(40.0),
        bottomRight: Radius.circular(40.0),
      )
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 17.0,
        ),
        SizedBox(
          width: 3.0,
        ),
        Text(
          '9.5',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        )
      ],
    )
  );
}

Widget episode() {
  return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(100.0)
      ),
      child: Column(
        children: <Widget>[
          Text(
            'Tập',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            '9999',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      )
  );
}
