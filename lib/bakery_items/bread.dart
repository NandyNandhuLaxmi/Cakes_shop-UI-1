import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ragamcakes/profile.dart';

import '../cart.dart';
import '../offers.dart';
import '../products.dart';

class Bread extends StatefulWidget {
  @override
  _BreadState createState() => _BreadState();
}

class _BreadState extends State<Bread> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        "10 breads",
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
                                          image: AssetImage('Assets/images/Ciabatta.jpg'),
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
                                                    Text("Ciabatta", maxLines: 2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
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
                                          image: AssetImage('Assets/images/Whole Wheat Bread.jpg'),
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
                                                    Text("Whole Wheat Bread", maxLines: 2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
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
                                          image: AssetImage('Assets/images/Sourdough.gif'),
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
                                                    Text("Sourdough", maxLines: 2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
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
                                          image: AssetImage('Assets/images/Rye Bread.jpg'),
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
                                                    Text("Rye Bread", maxLines: 2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
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
                                          image: AssetImage('Assets/images/Pita Bread.jpg'),
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
                                                    Text("Pita Bread", maxLines: 2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
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
                                          image: AssetImage('Assets/images/Focaccia.jpg'),
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
                                                    Text("Focaccia", maxLines: 2, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black)),
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
          ]
        ),
      ),
    );
  }
}

