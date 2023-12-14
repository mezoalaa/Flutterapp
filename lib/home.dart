
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int is_loaded = 0;
  List<Drinks> drinklist = [];

  Future<void> getAllDrinks() async {
    String path = 'http://127.0.0.1:8000/api/showcoffe/';
    try {
      final response = await http.get(Uri.parse(path));
      if (response.statusCode == 200) {
        List responseAfterDecode = jsonDecode(response.body);
        for (var ta in responseAfterDecode) {
          drinklist.add(Drinks.fromJson(ta));
        }
        setState(() {
          is_loaded = 1;
        });
      } else {
        setState(() {
          is_loaded = 2;
        });
      }
    } catch (e) {
      print("Error fetching data: $e");
      setState(() {
        is_loaded = 2;
      });
    }
  }

  @override
  void initState() {
    getAllDrinks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: 'Search For Your Favourite Drink',
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Drinks", fontSize: 18),
                  CustomText(text: "See All", fontSize: 16),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              _listViewProducts(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listViewProducts() {
    if (is_loaded == 0) {
      // Loading state
      return CircularProgressIndicator();
    } else if (is_loaded == 2) {
      // Error state
      return Text("Error loading data.");
    } else {
      // Data loaded successfully
      return Container(
        height: 340,
        child: ListView.separated(
          itemCount: drinklist.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Handle item tap
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .4,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.shade100,
                      ),
                      child: Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width * .4,
                        child: Image.network(
                          drinklist[index].coffeeName ?? "",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(drinklist[index].coffeeName.toString()),
                    SizedBox(height: 10),
                    Expanded(
                      child: Text(
                        drinklist[index].coffeeFlavor.toString(),
                        color: Colors.grey,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      drinklist[index].coffeePrice.toString() + " \$",
                      color: Colors.black,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 20,
          ),
        ),
      );
    }
  }
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => AppBar().preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Add your left icon action here
            },
          ),
          Image.asset(
            'assets/timme.jpeg',
            height: 60,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {

            },
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;

  const CustomText({required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize),
    );
  }
}

class Drinks {
  int? id;
  String? coffeeName;
  String? coffeeDesc;
  String? coffeePrice;
  String? coffeeFlavor;
  bool? isWithMarshmello;
  bool? isWithDonuts;
  bool? isAvailable;
  String? coffeeSize;

  Drinks({
    this.id,
    this.coffeeName,
    this.coffeeDesc,
    this.coffeePrice,
    this.coffeeFlavor,
    this.isWithMarshmello,
    this.isWithDonuts,
    this.isAvailable,
    this.coffeeSize,
  });

  factory Drinks.fromJson(Map<String, dynamic> json) {
    return Drinks(
      id: json['id'],
      coffeeName: json['coffeeName'],
      coffeeDesc: json['coffeeDesc'],
      coffeePrice: json['coffeePrice'],
      coffeeFlavor: json['coffeeFlavor'],
      isWithMarshmello: json['isWithMarshmello'],
      isWithDonuts: json['isWithDonuts'],
      isAvailable: json['isAvailable'],
      coffeeSize: json['coffeeSize'],
    );
  }
}
