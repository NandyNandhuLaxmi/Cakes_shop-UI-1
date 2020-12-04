import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ragamcakes/products.dart';
import 'package:ragamcakes/profile.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'cart.dart';

class offers extends StatefulWidget {
  @override
  _offersState createState() => _offersState();
}

class _offersState extends State<offers> {
  int tag = 1;

  // multiple choice value
  List<String> tags = [];

  // list of string options
  List<String> options = [
    'All', 'Fast Food', 'Snacks',
    'Cookies', 'Bugger', 'Pizza',
    'Cake', 'Juice', 'Food', 'Chips',
  ];
  double _lowerValue = 50;
  double _upperValue = 180; 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontFamily: 'Roboto'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFff7b10), Color(0xFFF5595A)])),
        ),
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.person,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cart_fill()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Cakes',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/weddingcake.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'White Cream',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fruitsVeg()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/cupcake.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cup Cake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => offers()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/wedding8.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Black Forest\nCake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => offers()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/oreo-cheesecake-2.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Oreo Cheese',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => offers()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/instant-pot-cherry-delight-cheesecake-5.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cherry Cheese',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => offers()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "34 cakes",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.only(bottom: 3),
                          icon: Icon(
                            EvaIcons.options2Outline,
                            size: 18,
                            color: Colors.black,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => sortfilter()),
                      );
                    }
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            GestureDetector(
              child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                       },
            ),


                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/black-forest.webp'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Black Forest Gateau", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                       },
                     ),

                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                       },
                     ),

                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/pineapple-cake.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Pineapple Cake", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                       },
                     ),

                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/eggless-cake.webp'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Eggless Truffle Cake", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                       },
                     ),


                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/oreo-cheesecake.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Oreo Cheesecake", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                       },
                     ),
          ],
        ),
      )),
    );
  }
}



class fruitsVeg extends StatefulWidget {
  @override
  _fruitsVegState createState() => _fruitsVegState();
}

class _fruitsVegState extends State<fruitsVeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontFamily: 'Roboto'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFff7b10), Color(0xFFF5595A)])),
        ),
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.person,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Cakes',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/weddingcake.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'White Cream',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fruitsVeg()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/cupcake.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cup Cake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => dairyBakery()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/wedding8.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Black Forest\nCake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => staples()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/oreo-cheesecake-2.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Oreo Cheese\ncake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => snacks()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/instant-pot-cherry-delight-cheesecake-5.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cherry Cheese',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => personalcare()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "4 cakes",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.only(bottom: 3),
                          icon: Icon(
                            EvaIcons.options2Outline,
                            size: 18,
                            color: Colors.black,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => sortfilter()));
                    }
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            GestureDetector(
              child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                       },
            ),


                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/black-forest.webp'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Black Forest Gateau", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                       },
                     ),

                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                     ),
    
          ],
        ),
      )),
    );
  }
}

class dairyBakery extends StatefulWidget {
  @override
  _dairyBakeryState createState() => _dairyBakeryState();
}

class _dairyBakeryState extends State<dairyBakery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontFamily: 'Roboto'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFff7b10), Color(0xFFF5595A)])),
        ),
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.person,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Cup Cakes',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/weddingcake.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'White Cream',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fruitsVeg()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/cupcake.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cup Cake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => dairyBakery()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/wedding8.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Black Forest\nCake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => staples()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/oreo-cheesecake-2.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Oreo Cheese\ncake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => snacks()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/instant-pot-cherry-delight-cheesecake-5.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cherry Cheese',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => personalcare()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "2 cakes",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.only(bottom: 3),
                          icon: Icon(
                            EvaIcons.options2Outline,
                            size: 18,
                            color: Colors.black,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => sortfilter()));
                    }
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            
             GestureDetector(
               child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
             ),


                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/black-forest.webp'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Black Forest Gateau", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                     ),

          ],
        ),
      )),
    );
  }
}

class staples extends StatefulWidget {
  @override
  _staplesState createState() => _staplesState();
}

class _staplesState extends State<staples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontFamily: 'Roboto'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFff7b10), Color(0xFFF5595A)])),
        ),
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.person,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Black Forest\nCake',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/weddingcake.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'White Cream',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fruitsVeg()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/cupcake.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cup Cake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => dairyBakery()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/wedding8.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Black Forest\nCake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => staples()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/oreo-cheesecake-2.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Oreo Cheese\ncake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => snacks()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/instant-pot-cherry-delight-cheesecake-5.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cherry Cheese',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => personalcare()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "3 cakes",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.only(bottom: 3),
                          icon: Icon(
                            EvaIcons.options2Outline,
                            size: 18,
                            color: Colors.black,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => sortfilter()));
                    }
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),

            GestureDetector(
              child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
            ),

                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                     ),

                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                     ),
            
          ],
        ),
      )),
    );
  }
}

class snacks extends StatefulWidget {
  @override
  _snacksState createState() => _snacksState();
}

class _snacksState extends State<snacks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontFamily: 'Roboto'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFff7b10), Color(0xFFF5595A)])),
        ),
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.person,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Cherry\nCheeseCake',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/weddingcake.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'White Cream',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fruitsVeg()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/cupcake.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cup Cake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => dairyBakery()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/wedding8.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Black Forest\nCake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => staples()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/oreo-cheesecake-2.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Oreo Cheese\ncake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => snacks()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "2 cakes",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.only(bottom: 3),
                          icon: Icon(
                            EvaIcons.options2Outline,
                            size: 18,
                            color: Colors.black,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => sortfilter()));
                    }
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            GestureDetector(
              child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
            ),


                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/black-forest.webp'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Black Forest Gateau", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                     ),

                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                     ),
            
          ],
        ),
      )),
    );
  }
}

class personalcare extends StatefulWidget {
  @override
  _personalcareState createState() => _personalcareState();
}

class _personalcareState extends State<personalcare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontFamily: 'Roboto'),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFff7b10), Color(0xFFF5595A)])),
        ),
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.person,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: new FlatButton(
                    child: Text(
                      'Cup Cakes',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      child: Row(
                        children: [
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/weddingcake.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'White Cream',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fruitsVeg()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/cupcake.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cup Cake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => dairyBakery()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/wedding8.jfif'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Black Forest\nCake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => staples()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/oreo-cheesecake-2.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Oreo Cheese\ncake',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => snacks()),
                              );
                            },
                          ),
                          InkWell(
                            child: Container(
                              width: 165,
                              height: 58,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'Assets/images/instant-pot-cherry-delight-cheesecake-5.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Container(
                                    child: Text(
                                      'Cherry Cheese',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => personalcare()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "4 cakes",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 60,
                      width: 60,
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: IconButton(
                          padding: const EdgeInsets.only(bottom: 3),
                          icon: Icon(
                            EvaIcons.options2Outline,
                            size: 18,
                            color: Colors.black,
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => sortfilter()));
                    }
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            GestureDetector(
                          child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/dark_choco.jpg'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Dark Chocolate", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
            ),


                     GestureDetector(
                       child: Stack(
                        children: <Widget>[
                          Container(
                          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(16))),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(14)),
                                      color: Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage('Assets/images/black-forest.webp'),
                                        fit: BoxFit.fill)),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              padding: EdgeInsets.only(right: 8, top: 4),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Black Forest Gateau", maxLines: 2, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                                                  Icon(EvaIcons.heartOutline, color: Colors.black12),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 6.8),
                                            Container(
                                              child: Row(
                                                children: <Widget>[
                                                  Icon(EvaIcons.star, color: Color(0xFFF15B5D), size: 20),
                                                  Text('4.9', style: TextStyle(fontSize: 15, color: Color(0xFFF15B5D), fontWeight: FontWeight.bold)),
                                                  SizedBox(width: 5.0,),
                                                  Text('(124 rating)', style: TextStyle(fontSize: 15, color: Colors.black45, fontWeight: FontWeight.bold)),                 
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 6,),
                                            GestureDetector(
                                              child: Container(
                                                height: 35,
                                                width: 280,
                                                alignment: Alignment.topRight,
                                                padding: const EdgeInsets.only(left: 175.0),
                                                margin: EdgeInsets.all(4),
                                                child: Container(
                                                    padding: const EdgeInsets.all(5.0),  
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(20.0)
                                                    ),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(4),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Container(
                                                          alignment: Alignment.center,
                                                            child: Text("Add Cart", textAlign: TextAlign.center, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white)),
                                                        ),
                                                      ],
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                                            ),
                                            
                                          ],
                                        ),
                                      ),
                                      flex: 100,
                                    )
                                  ],
                                ),
                            ),
                          ],
                       ),
                       onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => product_screen(),fullscreenDialog: false,));
                                              },
                     ),
            
          ],
        ),
      )),
    );
  }
}


class sortfilter extends StatelessWidget {
  int tag = 1;
  // multiple choice value
  List<String> tags = [];

  // list of string options
  List<String> options = [
    'All', 'Fast Food', 'Snacks',
    'Cookies', 'Bugger', 'Pizza',
    'Cake', 'Juice', 'Food', 'Chips',
  ];
  double _lowerValue = 180;
  double _upperValue = 180; 

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Color(0xFFFAFAFA),
          appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            title: Text(
              "Filters",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            backgroundColor: Color(0xFFFFFFFF),     
            leading: IconButton(
              icon: Icon(
                Icons.close,
                color: Color(0xFF000000),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            actions: [
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  child: Text('Reset', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18)),
                  onTap: () {
                    
                  },
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: Color(0xFFFFFFFF),
                        child: Column(
                          children: [
                            GestureDetector(
                              child: Container(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    SizedBox(width: 8.0),
                                    Text('Sort by', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                                    Spacer(flex: 2),
                                    
                                  ],
                                ),
                              ),
                              onTap: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => profile()),
                                // );
                              },
                            ),
                            Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),
    
                            GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                SizedBox(width: 8.0),
                                Text('Most Popular', style: TextStyle(color: Color(0xFFff7b10), fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                                Spacer(flex: 2),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(EvaIcons.checkmarkOutline, color: Color(0xFFff7b10),))
                              ],
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => profile()),
                            // );
                          },
                        ),
                        Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),
    
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                SizedBox(width: 8.0),
                                Text('Price High to Low', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                                Spacer(flex: 2),
                               
                              ],
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => profile()),
                            // );
                          },
                        ),
                        Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),
    
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                SizedBox(width: 8.0),
                                Text('Price Low to High', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                                Spacer(flex: 2),
                                
                              ],
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => profile()),
                            // );
                          },
                        ),
                        Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),
    
                        GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                SizedBox(width: 8.0),
                                Text('Nearest to me', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Montserrat')),
                                Spacer(flex: 2),
                                
                              ],
                            ),
                          ),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => profile()),
                            // );
                          },
                        ),
                        Divider(color: Color(0xFFF1F1F1), indent: 14, endIndent: 14, thickness: 2,),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Filter', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),)
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: ChipsChoice<String>.multiple(
                          value: tags,
                          spinnerColor: Color(0xFFff7b10),
                          onChanged: (val) => setState(() => tags = val),
                          choiceItems: C2Choice.listFrom<String, String>(
                            source: options,
                            value: (i, v) => v,
                            label: (i, v) => v,
                            tooltip: (i, v) => v,
                          ),
                          wrapped: true,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Price', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),)
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('₹ 0.00', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                            Text('₹ 100.00', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                          ],
                        )
                      ),

                      Container(
                        alignment: Alignment.centerLeft,
                        child: FlutterSlider(
                          values: [1000, 15000],
                          rangeSlider: true,
                          //rtl: true,
                          ignoreSteps: [
                            FlutterSliderIgnoreSteps(from: 8000, to: 12000),
                            FlutterSliderIgnoreSteps(from: 18000, to: 22000),
                          ],
                          max: 25000,
                          min: 0,
                          step: FlutterSliderStep(step: 100),
                          jump: true,
                          trackBar: FlutterSliderTrackBar(
                            activeTrackBarHeight: 5,
                            activeTrackBar: BoxDecoration(color: Color(0xFFff7b10)),
                          ),
                          tooltip: FlutterSliderTooltip(
                              textStyle: TextStyle(fontSize: 17, color: Color(0xFFff7b10)),
                          ),
                          handler: FlutterSliderHandler(
                          decoration: BoxDecoration(),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFff7b10),
                              borderRadius: BorderRadius.circular(25)),
                              padding: EdgeInsets.all(10),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                          ),
                    ),
                  ),
                  rightHandler: FlutterSliderHandler(
                    decoration: BoxDecoration(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFff7b10),
                          borderRadius: BorderRadius.circular(25)),
                      padding: EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                  disabled: false,

                  onDragging: (handlerIndex, lowerValue, upperValue) {
                    _lowerValue = lowerValue;
                    _upperValue = upperValue;
                    setState(() {});
                  },
                )),
              SizedBox(height: 20.0,),
              Container(
                width: 410,
                height: 52.0,
                child: RaisedButton(
                  hoverColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  child: Text("Done", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800,  color: Colors.white),),
                    color: Color(0xFFff7b10),
                    textColor: Colors.black,
                    splashColor: Colors.white,
                    onPressed: () {
                     // Navigator.push(context, MaterialPageRoute(builder: (context) => Check_Out()));
                    },
                ),
              ),                                 
            ],
          ),
        ),                                          
      );
    }
    void setState(Null Function() param0) {}
}