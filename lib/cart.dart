import 'package:badges/badges.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'profile.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
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
              // Navigator.pushAndRemoveUntil(
              //   context,
              //   MaterialPageRoute(builder: (context) => cart()),
              //   (Route<dynamic> route) => true,
              // );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Container(
            height: 500,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
                image: DecorationImage(
              image: AssetImage('Assets/images/empty_cart.webp'),
              fit: BoxFit.cover,
            )),
          ),
        ),
      ),
    );
  }
}

class cart_fill extends StatefulWidget {
  @override
  _cart_fillState createState() => _cart_fillState();
}

class _cart_fillState extends State<cart_fill> {
  int _counter = 1;
  var num1 = 75.68;
  var num2 = 2.00;
  var res = 75.68;

  void doMult() {
    setState(() {
      double out = num1 * num2;
      res = out;
    });
  }

  void doDiv() {
    setState(() {
      double out = num1 / num2;
      res = out;
    });
  }

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
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
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
          Badge(
            position: BadgePosition.topEnd(top: 4, end: 8),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent: Text(
              _counter.toString(),
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            child: IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => cart()),
                // );
              },
              icon: Icon(
                EvaIcons.shoppingCart,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Column(children: [
        Container(
            height: 28.8,
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(5.6),
            color: Color(0xFFF8F8F8),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Color(0xFF7A7A7A),
                ),
                SizedBox(width: 4.8),
                Text(
                  'Deliver to 641024',
                  style: TextStyle(
                    color: Color(0xFF7A7A7A),
                    fontSize: 12.0,
                  ),
                ),
              ],
            )),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                      image: AssetImage(
                          'Assets/images/dark_choco.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 15),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 8, top: 4),
                      child: Text(
                        "Dark Hot Choco Cake",
                        maxLines: 2,
                        softWrap: true,
                        style: TextStyle(
                            fontSize: 17.5,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Text(
                            "\$76.67",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Roboto',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "\$115.00",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                                decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            "Save \$ 38.33",
                            style: TextStyle(
                                color: Colors.green.shade500,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: const EdgeInsets.only(left: 185.0),
                      margin: EdgeInsets.all(4),
                      child: Container(
                        child: Row(
                          children: [
                            buildRaisedButton(
                                color: Color(0xFFff7b10),
                                icon: Icons.remove,
                                press: () {
                                  if (_counter > 1) {
                                    setState(() {
                                      _counter--;
                                      doDiv();
                                    });
                                  }
                                }),
                            SizedBox(width: 2.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 3),
                              child: Text(
                                _counter.toString().padLeft(2, "0"),
                                style: TextStyle(
                                    fontSize: 18.8,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(width: 2.0),
                            buildRaisedButton(
                                icon: Icons.add,
                                color: Color(0xFFff7b10),
                                press: () {
                                  setState(() {
                                    _counter++;
                                    doMult();
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          color: Colors.white,
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text('Payment Details',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      fontSize: 18.7)),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Container(
                  // padding: const EdgeInsets.fromLTRB(12, 5, 30, 4 ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'MRP Total',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.7,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              '₹ $res',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontSize: 15.7,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 2,
                        endIndent: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              'Discount',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.7,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "₹ 7.20",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15.7,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 2,
                        endIndent: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Total Amount",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15.7,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "₹ $res",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 15.7,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            )),
            Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.all(10.8),
                child: Text('Save ₹ 8.33',
                    style: TextStyle(
                        fontSize: 15.7,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade500)))
          ]),
        ),
      ]),
      bottomSheet: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('₹ $res',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
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
                    MaterialPageRoute(builder: (context) => DeliveryAddress()),
                  );
                },
                splashColor: Colors.blue[50],
                color: Color(0xFFff7b10),
                child: Text(
                  "Place Order",
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

  SizedBox buildRaisedButton(
      {IconData icon, Color color, Null Function() press}) {
    return SizedBox(
      width: 30,
      height: 30,
      child: RaisedButton(
        padding: EdgeInsets.zero,
        shape: CircleBorder(),
        color: Color(0xFFff7b10),
        onPressed: press,
        child: Icon(icon, size: 25, color: Colors.white),
      ),
    );
  }
}

void toast() {
  Fluttertoast.showToast(
      msg: "Add",
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey);
}

class DeliveryAddress extends StatefulWidget {
  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
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
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(children: [
              Container(
                  height: 50,
                  color: Colors.white,
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(12.6),
                  child: Text('Select Delivery Address',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))),
              SizedBox(height: 10),
              Container(
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(10.0),
                        child: Text('Payment Details',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.7)),
                      ),
                      Container(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(12, 5, 30, 4),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        'MRP Total',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 15.7,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        '₹ 151',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontSize: 15.7,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.black,
                                  indent: 2,
                                  endIndent: 2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        "Total Amount",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 15.7,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topRight,
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        "₹ 151",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 15.7,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ]),
                      )),
                      GestureDetector(
                        child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Icon(Icons.add),
                                Text('ADD NEW ADDRESS',
                                    style: TextStyle(
                                        fontSize: 15.7,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              ],
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewAddress()),
                          );
                        },
                      )
                    ]),
              ),
            ]),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text('₹ 151',
                  style: TextStyle(
                      color: Colors.black,
                      
                      fontWeight: FontWeight.w600)),
            ),
            Container(
              width: 180,
              height: 40,
              padding: const EdgeInsets.all(5.0),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color(0xFFff7b10))
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DeliveryAddress()),
                  // );
                },
                splashColor: Colors.blue[50],
                color: Color(0xFFff7b10),
                child: Text(
                  "Make Payment",
                  style: TextStyle(
                      color: Colors.white,
                      
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NewAddress extends StatefulWidget {
  @override
  _NewAddressState createState() => _NewAddressState();
}

class _NewAddressState extends State<NewAddress> {
  final TextEditingController pincode = new TextEditingController();
  final TextEditingController city = new TextEditingController();
  final TextEditingController state = new TextEditingController();
  final TextEditingController firstname = new TextEditingController();
  final TextEditingController lastname = new TextEditingController();
  final TextEditingController address = new TextEditingController();
  final TextEditingController landmark = new TextEditingController();
  final TextEditingController phone_no = new TextEditingController();

  _printLatestValue() {
    print('Second text field: ${pincode.text}');
  }

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
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: Text('Add Address',
                    style: TextStyle(
                        color: Color(0xFFff7b10),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 20),
              Container(
                height: 43.0,
                child: TextField(
                  controller: pincode,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: 'Pincode',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 1.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2))),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 43.0,
                child: TextField(
                  controller: city,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: 'City',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 1.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2))),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 43.0,
                child: TextField(
                  controller: state,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: 'State',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 1.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2))),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 43.0,
                child: TextField(
                  controller: firstname,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: 'First Name',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 1.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2))),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 43.0,
                child: TextField(
                  controller: lastname,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: 'Last Name',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 1.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2))),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 43.0,
                child: TextField(
                  controller: address,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: 'Address',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 1.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2))),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 43.0,
                child: TextField(
                  controller: landmark,
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: 'Landmark',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 1.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2))),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 63.0,
                child: TextField(
                  controller: phone_no,
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  enabled: true,
                  maxLengthEnforced: true,
                  maxLength: 10,
                  decoration: InputDecoration(
                      prefixText: '+91 | ',
                      prefixStyle: TextStyle(color: Colors.black),
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFE6E6E6), width: 1.2),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.2))),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.height * 0.6,
                height: 42.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    side: BorderSide(color: Color(0xFFff7b10))
                ),
                  child: Text(
                    "Save Address",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                  color: Color(0xFFff7b10),
                  textColor: Colors.black,
                  splashColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      pincode.addListener(_printLatestValue);
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DeliveryAddress()),
                    );
                  },
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
