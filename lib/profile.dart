import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart.dart';
import 'home.dart';
import 'offers.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign in",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Roboto', fontSize: 22),
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
      body: Container(
          child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 16.7,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 10.7,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Sign in to access your Orders, offers and wishlist ',
                            style: TextStyle(
                                fontSize: 14.7,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 18.7,
                        ),
                        Container(
                          height: 63.0,
                          child: TextField(
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
                                hintStyle:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                      color: Color(0xFFE6E6E6), width: 1.2),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1.2))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => profile1()),
                      );
                    },
                    child: Icon(Icons.arrow_forward_ios),
                    backgroundColor: Color(0xFFff7b10),
                  ),
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class profile1 extends StatefulWidget {
  @override
  _profile1State createState() => _profile1State();
}

class _profile1State extends State<profile1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontFamily: 'Roboto',
          ),
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
            child: Column(children: [
          Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 16.7,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 10.7,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Please enter your details. to login purpose',
                              style: TextStyle(
                                  fontSize: 14.7,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 18.7,
                          ),
                          Container(
                            height: 43.0,
                            child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                  labelText: 'First Name',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Color(0xFFE6E6E6), width: 1.2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.2))),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 43.0,
                            child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                  labelText: 'Last Name (optional)',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Color(0xFFE6E6E6), width: 1.2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.2))),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 43.0,
                            child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                  labelText: 'Email id (optional)',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Color(0xFFE6E6E6), width: 1.2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.2))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(height: 10),
          Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Verify',
                              style: TextStyle(
                                  fontSize: 16.7,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 10.7,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'We have sent 6 digit OTP on +91 -12345 67890',
                              style: TextStyle(
                                  fontSize: 14.7,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 18.7,
                          ),
                          Container(
                            height: 43.0,
                            child: TextField(
                              autocorrect: true,
                              decoration: InputDecoration(
                                  labelText: 'Enter 6 digit OTP',
                                  hintStyle: TextStyle(
                                      color: Color(0xFFE6E6E6), fontSize: 13),
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                        color: Color(0xFFE6E6E6), width: 1.2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 1.2))),
                            ),
                          ),
                          SizedBox(
                            height: 10.7,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Waiting for OTP ',
                              style: TextStyle(
                                  fontSize: 13.7,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF808080)),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: MediaQuery.of(context).size.height * 0.6,
                            height: 42.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              child: Text(
                                "Verify",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                              color: Color(0xFFff7b10),
                              textColor: Colors.black,
                              splashColor: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => profile_screen()),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ])),
      ),
    );
  }
}

class profile_screen extends StatefulWidget {
  @override
  _profile_screenState createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontFamily: 'Roboto'),
        ),
        bottom: PreferredSize(
          preferredSize: Size(50, 50),
          child: Container(
            height: 42.8,
            margin: const EdgeInsets.all(7.8),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                  suffixIcon: Icon(
                    EvaIcons.listOutline,
                    color: Color(0xFF000000),
                  ),
                  hintText: 'Search essentials, groceries and more ...',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  filled: true,
                  fillColor: Color(0xFFF1F0F6),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFFF1F0F6), width: 1.2),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xFFF1F0F6), width: 1.2))),
            ),
          ),
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
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(
            EvaIcons.menu2Outline,
            color: Colors.white,
          ),
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
      drawerEdgeDragWidth: 0,
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Adhoc',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFff7b10),
                //image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1502810190503-8303352d0dd1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'), fit: BoxFit.cover)
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('Assets/images/profile.jfif')),
              accountEmail: null,
            ),
            ListTile(
              title: new Text(
                'Home',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/home.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'Wallet',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/wallet.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wallet()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'Shop by Category',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/categories.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => offers()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'My Orders',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/checklist.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => cart_fill()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'My Account',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/man-user.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile_screen()),
                );
              },
            ),
            ExpansionTile(
              title: new Text(
                'Help and Setting',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              children: [
                ListTile(
                  title: new Text(
                    'Customer Service',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  leading: SvgPicture.asset(
                    'Assets/icons/support.svg',
                    height: 20.0,
                    width: 20.0,
                    allowDrawingOutsideViewBox: true,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: new Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/in.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/restaurant_screen');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
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
          color: Color(0xFFff7b10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.topLeft,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: SvgPicture.asset(
                          'Assets/icons/user.svg',
                          height: 20,
                          width: 20,
                          color: Color(0xFFff7b10),
                          allowDrawingOutsideViewBox: true,
                        )),
                      ),
                      SizedBox(
                        width: 18.7,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              //padding: const EdgeInsets.only(right: 68.0),
                              child: Text('Adhoc_Ecomm',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(
                              height: 2.8,
                            ),
                            Container(
                              //padding: const EdgeInsets.only(left: 2.0),
                              child: Text('12345678@nomail.adhoc.com',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                            SizedBox(
                              height: 2.8,
                            ),
                            Container(
                              //padding: const EdgeInsets.only(right: 55.0),
                              child: Text('+91 1234567890',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Spacer(flex: 10),
                      InkWell(
                        child: Container(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.mode_edit, color: Colors.white)),
                        onTap: () => _editprofile(context),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
                child: Row(
                  children: [
                    Container(
                      width: 225.0,
                      height: 55.0,
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.payment,
                              color: Color(0xFFF5595A),
                            ),
                            SizedBox(width: 2),
                            Text(
                              "Payment Methods",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.7,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        color: Color(0xFFF1F0F6),
                        textColor: Colors.black,
                        splashColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => payment()),
                          );
                        },
                      ),
                    ),
                    Container(
                      width: 200.0,
                      height: 55.0,
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        child: Row(
                          children: [
                            Icon(
                              Icons.insert_drive_file,
                              color: Color(0xFFF5595A),
                            ),
                            SizedBox(width: 2),
                            Text(
                              "Order History",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.7,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        color: Color(0xFFF1F0F6),
                        textColor: Colors.black,
                        splashColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => order()),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.height * 0.6,
                height: 42.0,
                padding: const EdgeInsets.fromLTRB(8.0, 0, 8.2, 5.8),
                child: RaisedButton(
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xFFF5595A),
                      ),
                      Text(
                        "Delivery Addresses",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.7,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  color: Color(0xFFF1F0F6),
                  textColor: Colors.black,
                  splashColor: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => delivery_add()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Container(
          color: Colors.white,
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Container(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(12, 5, 2, 4),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'My List',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 2,
                        endIndent: 25,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Legal Information',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 2,
                        endIndent: 25,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "FAQ's",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        indent: 2,
                        endIndent: 25,
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Contact us',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ))
                    ],
                  ),
                ),
              ]),
            ))
          ]),
        ),
        SizedBox(height: 20),
        Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text('For any queries,\nWhatsApp us:',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text('9940937373',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFff7b10))),
                ),
              ],
            )),
        SizedBox(height: 8.8),
        Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(15.0),
            child: Text(
                'Due to current situation we are witnessing a huge surge in calls/e-mails. There may be a delay in response from our side. kindly bear with us    ',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
      ])),
    );
  }

  _editprofile(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Stack(
            children: <Widget>[
              Container(
                height: 30.0,
                width: double.infinity,
                color: Colors.black54,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.only(top: 28.0),
                child: Column(
                  children: [
                    Container(
                      height: 43.0,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                            labelText: 'First Name',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E6E6), width: 1.2),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.2))),
                      ),
                    ),
                    SizedBox(
                      height: 18.7,
                    ),
                    Container(
                      height: 43.0,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                            labelText: 'Last Name',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E6E6), width: 1.2),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.2))),
                      ),
                    ),
                    SizedBox(
                      height: 18.7,
                    ),
                    Container(
                      height: 43.0,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                            labelText: 'Gender',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E6E6), width: 1.2),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.2))),
                      ),
                    ),
                    SizedBox(
                      height: 18.7,
                    ),
                    Container(
                      height: 43.0,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                            labelText: 'Date of birth'.toUpperCase(),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E6E6), width: 1.2),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.2))),
                      ),
                    ),
                    SizedBox(
                      height: 18.7,
                    ),
                    Container(
                      height: 43.0,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                            labelText: 'EMAIL ID',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  color: Color(0xFFE6E6E6), width: 1.2),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.2))),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.height * 0.6,
                      height: 42.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19.0),

                        ),
                        child: Text(
                          "Save",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                        color: Color(0xFFff7b10),
                        textColor: Colors.black,
                        splashColor: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profile_screen()),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        });
  }
}

class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontFamily: 'Roboto'),
        ),
        bottom: PreferredSize(
          preferredSize: Size(50, 50),
          child: Container(
            height: 42.8,
            margin: const EdgeInsets.all(7.8),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                  hintText: 'Search essentials, groceries and more ...',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  filled: true,
                  fillColor: Color(0xFFF1F0F6),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFFF1F0F6), width: 1.2),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xFFF1F0F6), width: 1.2))),
            ),
          ),
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
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(
            EvaIcons.menu2Outline,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile_screen()),
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
                MaterialPageRoute(builder: (context) => cart()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Adhoc',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFff7b10),
                //image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1502810190503-8303352d0dd1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'), fit: BoxFit.cover)
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('Assets/images/profile.jfif')),
              accountEmail: null,
            ),
            ListTile(
              title: new Text(
                'Home',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/home.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'Wallet',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/wallet.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wallet()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'Shop by Category',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/categories.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'My Orders',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/checklist.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => order()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'My Account',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/man-user.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile_screen()),
                );
              },
            ),
            ExpansionTile(
              title: new Text(
                'Help and Setting',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              children: [
                ListTile(
                  title: new Text(
                    'Customer Service',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  leading: SvgPicture.asset(
                    'Assets/icons/support.svg',
                    height: 20.0,
                    width: 20.0,
                    allowDrawingOutsideViewBox: true,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: new Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/in.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/restaurant_screen');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
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
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(12.6),
            child: Text('Payment Methods',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
        Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(12.6),
            child: Text('SAVED CARDS')),
        Container(
            color: Colors.white,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'No Card details saved by you',
              style: TextStyle(color: Colors.black, fontSize: 12),
            ))
      ])),
    );
  }
}

class delivery_add extends StatefulWidget {
  @override
  _delivery_addState createState() => _delivery_addState();
}

class _delivery_addState extends State<delivery_add> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Roboto', fontSize: 22),
        ),
        bottom: PreferredSize(
          preferredSize: Size(50, 50),
          child: Container(
            height: 42.8,
            margin: const EdgeInsets.all(7.8),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                  hintText: 'Search essentials, groceries and more ...',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  filled: true,
                  fillColor: Color(0xFFF1F0F6),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFFF1F0F6), width: 1.2),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xFFF1F0F6), width: 1.2))),
            ),
          ),
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
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(
            EvaIcons.menu2Outline,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile_screen()),
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
                MaterialPageRoute(builder: (context) => cart()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Adhoc',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              
              decoration: BoxDecoration(
                color: Color(0xFFff7b10),
                //image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1502810190503-8303352d0dd1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'), fit: BoxFit.cover)
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('Assets/images/profile.jfif')),
              accountEmail: null,
            ),
            ListTile(
              title: new Text(
                'Home',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/home.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'Wallet',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/wallet.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wallet()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'Shop by Category',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/categories.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'My Orders',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/checklist.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => order()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'My Account',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/man-user.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile_screen()),
                );
              },
            ),
            ExpansionTile(
              title: new Text(
                'Help and Setting',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              children: [
                ListTile(
                  title: new Text(
                    'Customer Service',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  leading: SvgPicture.asset(
                    'Assets/icons/support.svg',
                    height: 20.0,
                    width: 20.0,
                    allowDrawingOutsideViewBox: true,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: new Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/in.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/restaurant_screen');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
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
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(12.6),
            child: Text('Delivery Address',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold))),
        Container(
          color: Colors.white,
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
                hintText: 'Add New Address',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Color(0xFFE6E6E6), width: 1.2),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.black, width: 1.2))),
          ),
        )
      ])),
    );
  }
}

class order extends StatefulWidget {
  @override
  _orderState createState() => _orderState();
}

class _orderState extends State<order> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontFamily: 'Roboto'),
        ),
        bottom: PreferredSize(
          preferredSize: Size(50, 50),
          child: Container(
            height: 42.8,
            margin: const EdgeInsets.all(7.8),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                  hintText: 'Search essentials, groceries and more ...',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  filled: true,
                  fillColor: Color(0xFFF1F0F6),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFFF1F0F6), width: 1.2),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xFFF1F0F6), width: 1.2))),
            ),
          ),
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
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(
            EvaIcons.menu2Outline,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile_screen()),
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
                MaterialPageRoute(builder: (context) => cart()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Adhoc',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFff7b10),
                //image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1502810190503-8303352d0dd1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'), fit: BoxFit.cover)
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('Assets/images/profile.jfif')),
              accountEmail: null,
            ),
            ListTile(
              title: new Text(
                'Home',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/home.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'Wallet',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/wallet.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wallet()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'Shop by Category',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/categories.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'My Orders',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/checklist.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => order()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'My Account',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/man-user.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile_screen()),
                );
              },
            ),
            ExpansionTile(
              title: new Text(
                'Help and Setting',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              children: [
                ListTile(
                  title: new Text(
                    'Customer Service',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  leading: SvgPicture.asset(
                    'Assets/icons/support.svg',
                    height: 20.0,
                    width: 20.0,
                    allowDrawingOutsideViewBox: true,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: new Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/in.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/restaurant_screen');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
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
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(12.6),
            child: Text('Order placed? It might take few mins to reflect here',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold))),
      ])),
    );
  }
}

class wallet extends StatefulWidget {
  @override
  _walletState createState() => _walletState();
}

class _walletState extends State<wallet> {
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Ragam Cakes",
          style: TextStyle(
              color: Colors.white, fontFamily: 'Roboto', fontSize: 22),
        ),
        bottom: PreferredSize(
          preferredSize: Size(50, 50),
          child: Container(
            height: 42.8,
            margin: const EdgeInsets.all(7.8),
            child: TextField(
              autocorrect: true,
              decoration: InputDecoration(
                  hintText: 'Search essentials, groceries and more ...',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  filled: true,
                  fillColor: Color(0xFFF1F0F6),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Color(0xFFF1F0F6), width: 1.2),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Color(0xFFF1F0F6), width: 1.2))),
            ),
          ),
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
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(
            EvaIcons.menu2Outline,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile_screen()),
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
                MaterialPageRoute(builder: (context) => cart()),
              );
            },
            icon: Icon(
              EvaIcons.shoppingCart,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: new Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Adhoc',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFff7b10),
                //image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1502810190503-8303352d0dd1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'), fit: BoxFit.cover)
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('Assets/images/profile.jfif')),
              accountEmail: null,
            ),
            ListTile(
              title: new Text(
                'Home',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/home.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'Wallet',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/wallet.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wallet()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'Shop by Category',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/categories.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'My Orders',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/checklist.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => order()),
                );
              },
            ),
            ListTile(
              title: new Text(
                'My Account',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/man-user.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile_screen()),
                );
              },
            ),
            ExpansionTile(
              title: new Text(
                'Help and Setting',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              children: [
                ListTile(
                  title: new Text(
                    'Customer Service',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  leading: SvgPicture.asset(
                    'Assets/icons/support.svg',
                    height: 20.0,
                    width: 20.0,
                    allowDrawingOutsideViewBox: true,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => profile()),
                    );
                  },
                ),
              ],
            ),
            ListTile(
              title: new Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              leading: SvgPicture.asset(
                'Assets/icons/in.svg',
                height: 20.0,
                width: 20.0,
                allowDrawingOutsideViewBox: true,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/restaurant_screen');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
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
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(12.6),
            child: Column(
              children: [
                Container(
                    alignment: Alignment.topLeft,
                    child: Text('Adhoc Wallet',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold))),
                Container(
                    alignment: Alignment.topLeft,
                    child: Text("₹ 0.00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)))
              ],
            )),
      ])),
    );
  }
}
