//home.dart
import 'package:realEstate/nextPage.dart';
import 'package:realEstate/profile.dart';
import 'package:flutter/material.dart';
import 'ContactUs.dart';
import 'nextPage.dart';
import 'profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 1;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(

          margin: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Welcome Mazen alaa",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purple,
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Discover",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Suitable Home",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.purple.withOpacity(.5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Find Your Home",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Stack(
                      children: <Widget>[
                        Icon(Icons.notifications),
                        Positioned(
                          top: 1,
                          right: 1,
                          child: Container(
                            padding: EdgeInsets.all(1.2),
                            child: Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      homeWidget(),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              index == 1
                  ? _selectedWidget(Icon(Icons.home), "Home")
                  : IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
              ),
              index == 2
                  ? _selectedWidget(Icon(Icons.bookmark_border), "Bookmark")
                  : IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
              ),
              index == 3
                  ? _selectedWidget(Icon(Icons.contact_mail_outlined), "Contact US")
                  : IconButton(
                icon: Icon(Icons.contact_mail_outlined),
                onPressed: () {
                  _navigateToContactUsPage(context);
                  setState(() {
                    index = 3;
                  });
                },
              ),
              index == 4
                  ? _selectedWidget(
                  Icon(Icons.person_outline), "Profile")
                  : IconButton(
                icon: Icon(Icons.person_outline),
                onPressed: () {
                  _navigateToProfilePage(context);
                  setState(() {
                    index = 4;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget homeWidget() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
          return  NextPage();
        }));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: 250,
        height: 350,
        child: Stack(
          children: <Widget>[
            Hero(
              tag:'https://t4.ftcdn.net/jpg/02/79/95/39/360_F_279953994_TmVqT7CQhWQJRLXev4oFmv8GIZTgJF1d.jpg',
              child: Container(
                width: 230.0,
                height: 250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://t4.ftcdn.net/jpg/02/79/95/39/360_F_279953994_TmVqT7CQhWQJRLXev4oFmv8GIZTgJF1d.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 125,
              right: 20,
              child: FloatingActionButton(
                heroTag: null,
                mini: true,
                backgroundColor: Colors.deepOrange,
                child: Icon(Icons.chevron_right),
                onPressed: () {
                  // Handle onPressed event here
                  print('FloatingActionButton Pressed');
                },
              ),
            ),
            Positioned(
              bottom: 150,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Family House',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.white),
                      Text(
                        'El Agamy-Alexandria',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _selectedWidget(Icon icon, String str) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: Colors.purple.withOpacity(.4),
      ),
      child: Row(
        children: <Widget>[
          icon,
          Text(str),
        ],
      ),
    );
  }
}
void _navigateToProfilePage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilePage()), // Ensure correct class name
  );
}

void _navigateToContactUsPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ContactUsPage()), // Ensure correct class name
  );
}


