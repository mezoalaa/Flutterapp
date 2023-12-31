// import 'package:flutter/material.dart';
//
// class Property {
//   final String frontImage;
//   final String label;
//   final String name;
//   final String price;
//   final String location;
//   final String sqm;
//   final String review;
//
//   Property({
//     required this.frontImage,
//     required this.label,
//     required this.name,
//     required this.price,
//     required this.location,
//     required this.sqm,
//     required this.review,
//   });
// }
//
// class Search extends StatefulWidget {
//   @override
//   _SearchState createState() => _SearchState();
// }
//
// class _SearchState extends State<Search> {
//   late List<Property> properties;
//
//   @override
//   void initState() {
//     super.initState();
//     properties = getPropertyList();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(top: 48, left: 24, right: 24, bottom: 16),
//             child: TextField(
//               style: TextStyle(
//                 fontSize: 28,
//                 height: 1,
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//               ),
//               decoration: InputDecoration(
//                 hintText: 'Search',
//                 hintStyle: TextStyle(
//                   fontSize: 28,
//                   color: Colors.grey[400],
//                 ),
//                 enabledBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(color: Colors.grey[400]),
//                 ),
//                 focusedBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(color: Colors.grey[400]),
//                 ),
//                 border: UnderlineInputBorder(
//                   borderSide: BorderSide(color: Colors.grey[400]),
//                 ),
//                 suffixIcon: Padding(
//                   padding: EdgeInsets.only(left: 16),
//                   child: Icon(
//                     Icons.search,
//                     color: Colors.grey[400],
//                     size: 28,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(top: 16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 32,
//                     child: Stack(
//                       children: [
//                         ListView(
//                           physics: BouncingScrollPhysics(),
//                           scrollDirection: Axis.horizontal,
//                           children: [
//                             SizedBox(
//                               width: 24,
//                             ),
//                             buildFilter("House"),
//                             buildFilter("Price"),
//                             buildFilter("Security"),
//                             buildFilter("Bedrooms"),
//                             buildFilter("Garage"),
//                             buildFilter("Swimming Pool"),
//                             SizedBox(
//                               width: 8,
//                             ),
//                           ],
//                         ),
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: Container(
//                             width: 28,
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 begin: Alignment.centerRight,
//                                 end: Alignment.centerLeft,
//                                 stops: [0.0, 1.0],
//                                 colors: [
//                                   Theme.of(context).scaffoldBackgroundColor,
//                                   Theme.of(context)
//                                       .scaffoldBackgroundColor
//                                       .withOpacity(0.0),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     _showBottomSheet();
//                   },
//                   child: Padding(
//                     padding: EdgeInsets.only(left: 16, right: 24),
//                     child: Text(
//                       "Filters",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(right: 24, left: 24, top: 24, bottom: 12),
//             child: Row(
//               children: [
//                 Text(
//                   "53",
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 8,
//                 ),
//                 Text(
//                   "Results found",
//                   style: TextStyle(
//                     fontSize: 24,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 24),
//               child: ListView(
//                 physics: BouncingScrollPhysics(),
//                 scrollDirection: Axis.vertical,
//                 children: buildProperties(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildFilter(String filterName) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 12),
//       margin: EdgeInsets.only(right: 12),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.all(
//           Radius.circular(5),
//         ),
//         border: Border.all(
//           color: Colors.grey[300] ?? Colors.black,
//           width: 1,
//         ),
//       ),
//       child: Center(
//         child: Text(
//           filterName,
//           style: TextStyle(
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<Widget> buildProperties() {
//     List<Widget> list = [];
//     for (var i = 0; i < properties.length; i++) {
//       list.add(
//         Hero(
//           tag: properties[i].frontImage,
//           child: buildProperty(properties[i], i),
//         ),
//       );
//     }
//     return list;
//   }
//
//   Widget buildProperty(Property property, int index) {
//     return GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => Detail(property: property)),
//           );
//         },
//         child: Card(
//         margin: EdgeInsets.only(bottom: 24),
//     clipBehavior: Clip.antiAlias,
//     shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.all(
//     Radius.circular(15),
//     ),
//     ),
//     child: Container(
//     height: 210,
//     decoration: BoxDecoration(
//     image: DecorationImage(
//     image: AssetImage(property.frontImage),
//     fit: BoxFit.cover,
//     ),
//     ),
//     child: Container(
//     padding: EdgeInsets.all(20),
//     decoration: BoxDecoration(
//     gradient: LinearGradient(
//     begin: Alignment.topCenter,
//     end: Alignment.bottomCenter,
//     stops: [0.0, 0.7],
//     colors: [
//     Colors.transparent,
//     Colors.black.withOpacity(0.7),
//     ],
//     ),
//     ),
//     child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//     Container(
//     decoration: BoxDecoration(
//     color: Colors.yellow[700],
//     borderRadius: BorderRadius.all(
//     Radius.circular(5),
//     ),
//     ),
//     width: 80,
//     padding: EdgeInsets.symmetric(
//     vertical: 4,
//     ),
//     child: Center(
//     child: Text(
//     "FOR " + property.label,
//     style: TextStyle(
//     color: Colors.white,
//     fontSize: 14,
//     fontWeight: FontWeight.bold,
//     ),
//     ),
//     ),
//     ),
//     Expanded(
//     child: Container(),
//     ),
//     Column(
//     children: [
//     Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//     Text(
//     property.name,
//     style: TextStyle(
//     color: Colors.white,
//     fontSize: 18,
//     fontWeight: FontWeight.bold,
//     ),
//     ),
//     Text(
//     r"$" + property.price,
//     style: TextStyle(
//     color: Colors.white,
//     fontSize: 18,
//
