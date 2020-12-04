import 'package:flutter/material.dart';

import 'cart.dart';
import 'offers.dart';

class product_screen extends StatelessWidget {
  var rating = 3.0;
  int _counter = 0;

  String _currentSelectedValue, flavours, material, unit, DTS;
  var _currencies = [
    "Butter Cream",
    "Fresh Cream",
  ];
  var _flavour = [
    "Badam",
    "Button Scotch",
    "Choco Vanilla",
    "Chocolate",
    "PineApple",
    "Mango",
    "Pista",
    "Strawberry",
  ];
  var _mat = ["Egg", "EggLess"];
  var _unit = ["4.5 kg", "5 kg", "5.5 kg", "6 kg", "6.5 kg", "7 kg", "7.5 kg", "8 kg",];
  var _DTS = ["11.43 AM - 12.43 PM", "12.43 PM - 01.43 PM", "02.43 PM - 03.43 PM", "04.43 PM - 05.43 PM", "06.43 PM - 08.43 PM",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ragam Cakes',
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Dark Chocolate',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                        SizedBox(
                          height: 6.7,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'RAGAM CAKES'.toUpperCase(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Hero(
                    tag: NetworkImage,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Image(
                        image: AssetImage('Assets/images/dark_choco.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "You Save 36.87",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: Color(0xFF41A141),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.7,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: <Widget>[
                              Text(
                                "₹ 299.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Roboto',
                                    fontSize: 18),
                              ),
                              SizedBox(width: 6.2),
                              Text(
                                "₹ 115.00",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    decoration: TextDecoration.lineThrough),
                              ),
                              SizedBox(width: 6),
                              Text(
                                "(Incl. of all taxes)",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12,
                                    fontFamily: 'Roboto'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xFFECF8EC),
                    margin: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Inaugural Offer Free Shipping",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            
            Container(
              color: Colors.white,
              margin: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                          width: double.infinity,
                          height: 43.0,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFff7b10), width: 1.3),
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                                child: DropdownButton<String>(
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                  hint: Text('cake type'.toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 15),),
                                  value: _currentSelectedValue,
                                  isDense: true,
                                  onChanged: (value) {
                                    setState(() {
                                      _currentSelectedValue = value;
                                    });
                                  },
                                  items: _currencies.map((String value){
                                  return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value, style: TextStyle(color: Colors.black, fontSize: 15),),
                                );
                              }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          width: double.infinity,
                          height: 43.0,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFff7b10), width: 1.3),
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                                child: DropdownButton<String>(
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                  hint: Text('flavour'.toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 15),),
                                  value: flavours,
                                  isDense: true,
                                  onChanged: (value) {
                                    setState(() {
                                      flavours = value;
                                    });
                                  },
                                  items: _flavour.map((String value){
                                  return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value, style: TextStyle(color: Colors.black, fontSize: 15),),
                                );
                              }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          width: double.infinity,
                          height: 43.0,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFff7b10), width: 1.3),
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                                child: DropdownButton<String>(
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                  hint: Text('material'.toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 15),),
                                  value: material,
                                  isDense: true,
                                  onChanged: (value) {
                                    setState(() {
                                      material = value;
                                    });
                                  },
                                  items: _mat.map((String value){
                                  return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value, style: TextStyle(color: Colors.black, fontSize: 15),),
                                );
                              }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          width: double.infinity,
                          height: 43.0,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFFff7b10), width: 1.3),
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                                child: DropdownButton<String>(
                                  style: TextStyle(color: Colors.black, fontSize: 15),
                                  hint: Text('unit'.toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 15),),
                                  value: unit,
                                  isDense: true,
                                  onChanged: (value) {
                                    setState(() {
                                                                          unit = value;
                                                                        });
                                                                      },
                                                                      items: _unit.map((String value){
                                                                      return DropdownMenuItem<String>(
                                                                      value: value,
                                                                      child: Text(value, style: TextStyle(color: Colors.black, fontSize: 15),),
                                                                    );
                                                                  }).toList(),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(height: 10.0,),
                                                            Container(
                                                              width: double.infinity,
                                                              // margin: EdgeInsets.all(0.1),
                                                              child: Padding(
                                                                padding: const EdgeInsets.all(4.0),
                                                                child: TextField(
                                                                  minLines: 5,
                                                                  maxLines: 5,
                                                                  autocorrect: false,
                                                                  decoration: InputDecoration(
                                                                    hintText: 'messages'.toUpperCase(),
                                                                    hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                                                                    filled: true,
                                                                    fillColor: Color(0xFFFFFFFF),
                                                                    enabledBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                                        borderSide: BorderSide(color: Color(0xFFff7b10), width: 1.3),
                                                                    ),
                                                                    focusedBorder: OutlineInputBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                                                        borderSide: BorderSide(color: Color(0xFFff7b10), width: 1.3),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(height: 10.0),
                                                            Container(
                                                              width: double.infinity,
                                                              height: 43.0,
                                                              padding: const EdgeInsets.all(10.0),
                                                              decoration: BoxDecoration(
                                                                border: Border.all(color: Color(0xFFff7b10), width: 1.3),
                                                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                                              ),
                                                              child: DropdownButtonHideUnderline(
                                                                child: ButtonTheme(
                                                                  alignedDropdown: true,
                                                                    child: DropdownButton<String>(
                                                                      style: TextStyle(color: Colors.black, fontSize: 15),
                                                                      hint: Text('DATE AND TIME'.toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 15),),
                                                                      value: DTS,
                                                                      isDense: true,
                                                                      onChanged: (value) {
                                                                        setState(() {
                                                                          DTS = value;
                                                                        });
                                                                      },
                                                                      items: _DTS.map((String value){
                                                                      return DropdownMenuItem<String>(
                                                                      value: value,
                                                                      child: Text(value, style: TextStyle(color: Colors.black, fontSize: 15),),
                                                                    );
                                                                  }).toList(),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            //SizedBox(height: 40.0),
                                                    ],
                                                  )
                                                ),
                                                
                                                SizedBox(height: 10.0),
                                                
                                                
                                                Container(
                                                  color: Colors.white,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                alignment: Alignment.topLeft,
                                                                child: Text(
                                                                  'Description',
                                                                  style: TextStyle(
                                                                      fontSize: 16.7,
                                                                      fontWeight: FontWeight.bold,
                                                                      color: Colors.black,
                                                                      fontFamily: 'Roboto'),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 11.8,
                                                              ),
                                                              Container(
                                                                alignment: Alignment.topLeft,
                                                                child: Text(
                                                                  'Dark Chocolate',
                                                                  style: TextStyle(
                                                                      fontSize: 14.0,
                                                                      fontWeight: FontWeight.bold,
                                                                      color: Colors.black,
                                                                      fontFamily: 'Roboto'),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 11.8,
                                                              ),
                                                              Container(
                                                                alignment: Alignment.topLeft,
                                                                child: Text(
                                                                  'Filled with the goodness of milk & wheat, Cake soft bread  has been a source of all round nourishnmanet for nation the since decades',
                                                                  style: TextStyle(
                                                                      fontSize: 14.0,
                                                                      fontWeight: FontWeight.normal,
                                                                      color: Colors.black,
                                                                      fontFamily: 'Roboto'),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  color: Colors.white,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                alignment: Alignment.topLeft,
                                                                child: Text(
                                                                  'Features & Details',
                                                                  style: TextStyle(
                                                                      fontSize: 16.7,
                                                                      fontWeight: FontWeight.bold,
                                                                      color: Colors.black,
                                                                      fontFamily: 'Roboto'),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 5.7,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    padding: const EdgeInsets.fromLTRB(12, 5, 2, 4),
                                                                    child: Row(
                                                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                      children: [
                                                                        Container(
                                                                          alignment: Alignment.topLeft,
                                                                          padding: EdgeInsets.all(5.0),
                                                                          child: Text(
                                                                            'Dark Chocolate',
                                                                            textAlign: TextAlign.left,
                                                                            style: TextStyle(
                                                                                fontSize: 14.0,
                                                                                fontWeight: FontWeight.normal,
                                                                                color: Colors.black,
                                                                                fontFamily: 'Roboto'),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                
                                                Container(
                                                  color: Colors.white,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                          child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Column(children: [
                                                          Container(
                                                            alignment: Alignment.topLeft,
                                                            child: Text(
                                                              "Don't Forgot to Add",
                                                              style: TextStyle(
                                                                  fontSize: 16.7,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black,
                                                                  fontFamily: 'Roboto'),
                                                            ),
                                                          ),
                                                          SizedBox(height: 8),
                                                          InkWell(
                                                            child: Container(
                                                              margin: EdgeInsets.symmetric(horizontal: 8),
                                                              child: ConstrainedBox(
                                                                constraints: BoxConstraints(maxHeight: 200),
                                                                child: ListView.builder(
                                                                  itemBuilder: (context, index) {
                                                                    return createWishListItem();
                                                                  },
                                                                  itemCount: 8,
                                                                  primary: false,
                                                                  scrollDirection: Axis.horizontal,
                                                                ),
                                                              ),
                                                            ),
                                                            onTap: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder: (context) => offers(),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ]),
                                                      ))
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Container(
                                                  color: Colors.white,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                          child: Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Column(children: [
                                                          Container(
                                                            alignment: Alignment.topLeft,
                                                            child: Text(
                                                              "Product Rating ",
                                                              style: TextStyle(
                                                                  fontSize: 16.7,
                                                                  fontWeight: FontWeight.bold,
                                                                  color: Colors.black,
                                                                  fontFamily: 'Roboto'),
                                                            ),
                                                          ),
                                                          SizedBox(height: 20),
                                                          Row(
                                                            children: [
                                                              Container(
                                                                alignment: Alignment.topLeft,
                                                                child: Text(
                                                                  'Rate Product',
                                                                  style: TextStyle(
                                                                      fontSize: 14.0,
                                                                      fontWeight: FontWeight.bold,
                                                                      color: Colors.black,
                                                                      fontFamily: 'Roboto'),
                                                                ),
                                                              ),
                                                              //SmoothStarRating(
                                                              //allowHalfRating: false,
                                                              //onRated: (v) {
                                                              //},
                                                              //starCount: 5,
                                                              //rating: rating,
                                                              //size: 40.0,
                                                              //isReadOnly:true,
                                                              //fullRatedIconData: Icons.blur_off,
                                                              //halfRatedIconData: Icons.blur_on,
                                                              //color: Colors.green,
                                                              //borderColor: Colors.green,
                                                              //spacing:0.0
                                                              //)
                                                            ],
                                                          ),
                                                        ]),
                                                      ))
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 80),
                                              ],
                                            ),
                                          ),
                                          bottomSheet: Container(
                                            height: 45,
                                            margin: EdgeInsets.symmetric(vertical: 8),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.all(12.0),
                                                  child: Text('\View All Categories',
                                                      style: TextStyle(
                                                          
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.black,
                                                          fontFamily: 'Roboto')),
                                                ),
                                                Container(
                                                  width: 150,
                                                  height: 40,
                                                  
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: RaisedButton(
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(20.0),
                                                        side: BorderSide(color: Color(0xFFff7b10))
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => cart_fill()),
                                                      );
                                                    },
                                                    splashColor: Colors.blue[50],
                                                    color: Color(0xFFff7b10),
                                                    child: Text(
                                                      "Add to Cart",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'Roboto',
                                                          
                                                          fontWeight: FontWeight.w600),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                    
                                      createWishListItem() {
                                        return Container(
                                          // height: 220,
                                          margin: EdgeInsets.symmetric(horizontal: 4),
                                          decoration:
                                              BoxDecoration(border: Border.all(color: Colors.grey.shade100)),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  width: 140,
                                                  height: 180,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "Assets/images/cake-with-chocolate.jpg"),
                                                        fit: BoxFit.cover),
                                                  ),
                                                ),
                                                flex: 70,
                                              ),
                                              SizedBox(height: 6),
                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 4),
                                                child: Row(
                                                  children: <Widget>[
                                                    Text(
                                                      "₹ 76.67",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 15),
                                                    ),
                                                    SizedBox(width: 5),
                                                    Text(
                                                      "₹ 115.00",
                                                      style: TextStyle(
                                                          color: Colors.black87,
                                                          fontSize: 14,
                                                          decoration: TextDecoration.lineThrough),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 4),
                                                child: Text(
                                                  "Save ₹ 38.33",
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 13),
                                                ),
                                              ),
                                              SizedBox(height: 4),
                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 4),
                                                child: Text(
                                                  "Dark Choco Chip\nCake",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800),
                                                ),
                                              ),
                                              SizedBox(height: 2),
                                              Container(
                                                height: 35,
                                                width: 140,
                                                // margin: EdgeInsets.all(4),
                                                child: Container(
                                                  padding: const EdgeInsets.all(5.0),
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFFff7b10),
                                                      borderRadius: BorderRadius.circular(5.0)),
                                                  alignment: Alignment.center,
                                                  margin: EdgeInsets.all(2),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        alignment: Alignment.center,
                                                        child: Text(
                                                          "ADD",
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight: FontWeight.w800,
                                                              color: Colors.white),
                                                        ),
                                                      ),
                                                      Spacer(flex: 2),
                                                      Container(
                                                        height: 28,
                                                        width: 28,
                                                        alignment: Alignment.centerRight,
                                                        padding: const EdgeInsets.all(1.0),
                                                        child: RaisedButton(
                                                          padding: EdgeInsets.zero,
                                                          shape: CircleBorder(),
                                                          color: Color(0xFFff7b10),
                                                          child: Icon(
                                                            Icons.add,
                                                            size: 17,
                                                            color: Colors.white,
                                                          ),
                                                          onPressed: () {
                                                            // setState(() {
                                                            //   _counter++;
                                                            //   // doMult();
                                                            // });
                                                          },
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                    
                                      void setState(Null Function() param0) {}
}
