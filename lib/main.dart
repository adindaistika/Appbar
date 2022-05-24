import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Belajar SliverAppBar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZoll1PPmrk_wUrQadzzGOT0MrQ3uyrJfMkw&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Song"),
                      new Tab(icon: new Icon(Icons.download), text: "Galery"),
                      new Tab(icon: new Icon(Icons.favorite), text: "Playlist"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(children: <Widget>[
            Song(),
            Galery(),
            Playlist(),
          ]),
        ),
      ),
    );
  }
}

class Song extends StatelessWidget {
  final List lagu = [
    "BLACK PINK - How You Like That",
    "BLACK PINK - DDU-DU DDU-DU",
    "BLACK PINK - AS IF IT'S YOUR LAST",
    "BLACK PINK - BOOMBAYAH",
    "BLACK PINK - WHISTLE",
    "BLACK PINK - STAY",
    "BLACK PINK - Lovesick Girls",
    "BLACK PINK - Kill This Love",
    "BLACK PINK - PLAYING WITH FIRE -KR ver.-",
    "BLACK PINK - Ice Cream",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(lagu[index], style: TextStyle(fontSize: 20)),
            subtitle: Text("Lagu dari " + lagu[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: lagu.length,
      ),
    );
  }
}

class Galery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2, children: <Widget>[
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7RTCC63EPTFp3fvMkjlB71h5TwSA5QfYlWg&usqp=CAU",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BLACK PINK - How You Like That',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://upload.wikimedia.org/wikipedia/id/thumb/8/8b/Black_Pink_-_Ddu-Du_Ddu-Du_%28Japanese_version%29_artwork.png/220px-Black_Pink_-_Ddu-Du_Ddu-Du_%28Japanese_version%29_artwork.png",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BLACK PINK - DDU-DU DDU-DU',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7RTCC63EPTFp3fvMkjlB71h5TwSA5QfYlWg&usqp=CAU",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BLACK PINK - AS IF ITS YOUR LAST',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7RTCC63EPTFp3fvMkjlB71h5TwSA5QfYlWg&usqp=CAU",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BLACK PINK - How You Like That',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7RTCC63EPTFp3fvMkjlB71h5TwSA5QfYlWg&usqp=CAU",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BLACK PINK - DDU-DU DDU-DU',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7RTCC63EPTFp3fvMkjlB71h5TwSA5QfYlWg&usqp=CAU",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BLACK PINK - AS IF ITS YOUR LAST',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7RTCC63EPTFp3fvMkjlB71h5TwSA5QfYlWg&usqp=CAU",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BLACK PINK - How You Like That',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7RTCC63EPTFp3fvMkjlB71h5TwSA5QfYlWg&usqp=CAU",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BLACK PINK - DDU-DU DDU-DU',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7RTCC63EPTFp3fvMkjlB71h5TwSA5QfYlWg&usqp=CAU",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BLACK PINK - AS IF ITS YOUR LAST',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
        Container(
          child: Card(
            elevation: 10.0,
            child: Column(children: <Widget>[
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7RTCC63EPTFp3fvMkjlB71h5TwSA5QfYlWg&usqp=CAU",
                height: 150.0,
                width: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 1.0),
              Text(
                'BLACK PINK - How You Like That',
                style: TextStyle(color: Colors.brown, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}

class Playlist extends StatelessWidget {
  final List ffv = [
    "BLACK PINK - How You Like That",
    "BLACK PINK - DDU-DU DDU-DU",
    "BLACK PINK - AS IF IT'S YOUR LAST",
    "BLACK PINK - BOOMBAYAH",
    "BLACK PINK - WHISTLE",
    "BLACK PINK - STAY",
    "BLACK PINK - Lovesick Girls",
    "BLACK PINK - Kill This Love",
    "BLACK PINK - PLAYING WITH FIRE -KR ver.-",
    "BLACK PINK - Ice Cream",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(ffv[index], style: TextStyle(fontSize: 20)),
            subtitle: Text("Lagu dari " + ffv[index]),
            leading: Icon(Icons.audiotrack),
          ));
        },
        itemCount: ffv.length,
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
