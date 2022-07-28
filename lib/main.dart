import 'package:flutter/material.dart';
import 'package:animer/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime World',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final List<MyTabs> _tabs = [
    new MyTabs(title: "Anime", icon: Icon(Icons.home)),
    new MyTabs(title: "New", icon: Icon(Icons.description)),
    new MyTabs(title: "Favorite", icon: Icon(Icons.favorite)),
    new MyTabs(title: "More", icon: Icon(Icons.more_horiz))
  ];
  MyTabs _myHandler;
  TabController _tabController;

  tabMaker() {
    List<Tab> tabs = List();
    for (var i = 0; i < _tabs.length; i++) {
      tabs.add(Tab(text: _tabs[i].title, icon: _tabs[i].icon));
    }
    return tabs;
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
    _myHandler = _tabs[0];
    _tabController.addListener(_handleSelected);
  }

  void _handleSelected() {
    setState(() {
      _myHandler = _tabs[_tabController.index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          _myHandler.title,
        ),
        flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.pink[200], Colors.cyan],
                    stops: [0.5, 1.0]
                )
            )
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.cyan[200], Colors.pink[200]],
                stops: [0.5, 1.0]
            )
        ),
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white70,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(5.0),
          indicatorColor: Colors.transparent,
          tabs: tabMaker()
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          HomeScreen(),
          Container(child: Icon(Icons.search)),
          Container(child: Icon(Icons.favorite)),
          Container(child: Icon(Icons.more_horiz)),
        ],
      ),
    );
  }
}

class MyTabs {
  final String title;
  final Icon icon;
  MyTabs({this.title, this.icon});
}
