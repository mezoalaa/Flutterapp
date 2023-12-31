import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              child: Hero(
                tag:'https://t4.ftcdn.net/jpg/02/79/95/39/360_F_279953994_TmVqT7CQhWQJRLXev4oFmv8GIZTgJF1d.jpg',
                child: Image.network(
                  "https://t4.ftcdn.net/jpg/02/79/95/39/360_F_279953994_TmVqT7CQhWQJRLXev4oFmv8GIZTgJF1d.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              height: screenHeight * 0.6,
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight*0.45),
              child: Material(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 35.0,top: 20.0,right: 30.0,bottom: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget> [
                          Text("\$7700", style: TextStyle(color: Colors.purple,fontSize: 30.0,fontWeight: FontWeight.bold),),
                          Icon(Icons.bookmark_border, color: Colors.purple,)
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),

                      Text("Family Home",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.spa,size: 15.0,),
                              Text("1"),
                              Icon(Icons.room_service,size: 15.0,),
                              Text("6"),
                            ],
                          ),
                          Text("10000 sq.ft"),
                        ],
                      ),
                      Divider(),//5at like this -----
                      SizedBox(
                        height: 10.0,
                      ),
                      Text("Home loan Calaculator",style: TextStyle(color: Colors.black.withOpacity(.8),fontSize:18.0,fontWeight: FontWeight.bold ),),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("\$ 1602/per month"),
                      Icon(Icons.question_answer,color: Colors.purple,),
                      ],
                  ),
                      SizedBox(height: 10.0,),
                      Text("Here you can find it",style: TextStyle(color: Colors.black.withOpacity(.8),fontSize:18.0,fontWeight: FontWeight.bold ),),
                      SizedBox(height: 5.0),
                      Text("Apply for conditional approval"),
                      SizedBox(height: 5.0),
                      Image.network('https://st4.depositphotos.com/3687841/20971/v/450/depositphotos_209718366-stock-illustration-map-red-sea-its-neighboring.jpg'),
                      SizedBox(height: 5.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              child: Text("Conect with onwer"),
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.only(
                                    topLeft: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                    bottomRight: Radius.circular(21.0),
                                  ),
                                    color: Colors.purple.withOpacity(.4),
                              ),
                              alignment: Alignment.center,

                            ),
                          ),
                          SizedBox(width: 25.0),
                          Expanded(
                            child:Container(
                              alignment: Alignment.center,
                            padding: EdgeInsets.all(10.0),
                            child: Text("Express Interests",style: TextStyle(color: Colors.white),),
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(21.0),
                              ),
                              color: Colors.purple,
                            ),
                          ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
