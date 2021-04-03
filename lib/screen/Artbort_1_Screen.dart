import 'package:flutter/material.dart';

const ktextHeadlineStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
const ktextSubHeadlineStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);

class Artbord1Screen extends StatefulWidget {
  static String id = "Artbord1Screen";

  @override
  _Artbord1ScreenState createState() => _Artbord1ScreenState();
}

class _Artbord1ScreenState extends State<Artbord1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                  child: Column(
                children: [
                  Text(
                    'James White',
                    style: ktextHeadlineStyle,
                  ),
                  Text(
                    'nisaricup@gmail.com',
                    style: ktextSubHeadlineStyle,
                  )
                ],
              )),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  DrawerIconButton(
                    onTap: (){print("1");},
                    icon: Icons.dashboard,
                    name: "Dashboard",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: DrawerIconButton(
                      onTap: (){print("2");},
                      icon: Icons.account_circle,
                      name: "Profile",
                    ),
                  ),
                  DrawerIconButton(
                    onTap: (){print("3");},
                    icon: Icons.backpack,
                    name: "Packages",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: DrawerIconButton(
                      onTap: (){print("4");},
                      icon: Icons.image,
                      name: "Gallery",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerIconButton extends StatelessWidget {
  DrawerIconButton({this.onTap, this.icon, this.name});

  final Function onTap;
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
     // hoverColor: Colors.red,
     // highlightColor: Colors.yellow,
      splashColor: Colors.green,
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Icon(icon, color: Colors.black,size: 30,),
          ),
          Text(
            name,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
