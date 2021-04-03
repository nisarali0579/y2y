import 'package:flutter/material.dart';

const ktextHeadlineStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
const ktextSubHeadlineStyle =
TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);

class TaineePendingScreen extends StatefulWidget {
  static String id = "TaineePendingScreen";

  @override
  _TaineePendingScreenState createState() => _TaineePendingScreenState();
}

class _TaineePendingScreenState extends State<TaineePendingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0XFF252C41),
        actions: [
          IconButton(
              icon: Icon(
                Icons.chat,
                color: Colors.red,
              ),
              onPressed: null),
        ],
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.red,
            ),
            onPressed: null),
        centerTitle: true,
        title: Image.asset('assets/y2y_logo.png'),
      ),
      body: SafeArea(
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
