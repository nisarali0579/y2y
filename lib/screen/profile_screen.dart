import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_read_more_text/flutter_read_more_text.dart';
import 'package:expandable/expandable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profileScreen extends StatefulWidget {
  static String id = "profileScreen";

  @override
  _profileScreenState createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  final categoryController = ExpandableController(initialExpanded: false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.red,
          ),
          onPressed: null
        ),
        centerTitle: true,
        title: Image.asset('assets/y2y_logo.png'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                decoration: kBoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                              child: Image.asset('assets/pic.jpg',
                                  fit: BoxFit.cover),
                              height: 150,
                              width: 150,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "James White",
                                    style: TextStyle(
                                        fontSize: 20.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15.0),
                                    child: Text("Fotball"),
                                  ),
                                  Text("17 Years OF Experience"),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Text(
                          "Bio",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      ReadMoreText(
                          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm")
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "package",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: kBoxDecoration(),
                child: ExpandableNotifier(
                  child: Expandable(
                    collapsed: ExpandableButton(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "30 Minutes Training",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    expanded: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text("Date"),
                                  ),
                                  Text("Mon 60-20-2021"),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("Price"),
                                    ),
                                    Text("5"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("From"),
                                    ),
                                    Text("07:00 Am"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("To"),
                                    ),
                                    Text("08:00 Am"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("Trainees"),
                                    ),
                                    Text("1"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Icon(Icons.arrow_drop_up_sharp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: kBoxDecoration(),
                child: ExpandableNotifier(
                  child: Expandable(
                    collapsed: ExpandableButton(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "30 Minutes Group Training",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    expanded: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text("Date"),
                                  ),
                                  Text("Mon 60-20-2021"),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("Price"),
                                    ),
                                    Text("5"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("From"),
                                    ),
                                    Text("07:00 Am"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("To"),
                                    ),
                                    Text("08:00 Am"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("Trainees"),
                                    ),
                                    Text("1"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Icon(Icons.arrow_drop_up_sharp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: kBoxDecoration(),
                child: ExpandableNotifier(
                  child: Expandable(
                    collapsed: ExpandableButton(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "1 hour Training",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    expanded: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text("Date"),
                                  ),
                                  Text("Mon 60-20-2021"),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("Price"),
                                    ),
                                    Text("5"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("From"),
                                    ),
                                    Text("07:00 Am"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("To"),
                                    ),
                                    Text("08:00 Am"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("Trainees"),
                                    ),
                                    Text("1"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Icon(Icons.arrow_drop_up_sharp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: kBoxDecoration(),
                child: ExpandableNotifier(
                  child: Expandable(
                    collapsed: ExpandableButton(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "1 hour Group Training",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ),
                    ),
                    expanded: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text("Date"),
                                  ),
                                  Text("Mon 60-20-2021"),
                                ],
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("Price"),
                                    ),
                                    Text("5"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("From"),
                                    ),
                                    Text("07:00 Am"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("To"),
                                    ),
                                    Text("08:00 Am"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Text("Trainees"),
                                    ),
                                    Text("1"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        ExpandableButton(
                          // <-- Collapses when tapped on
                          child: Icon(Icons.arrow_drop_up_sharp),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                //margin: EdgeInsets.symmetric(vertical: 20),
                decoration: kBoxDecoration(),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                      child: Material(
                        //Wrap with Material
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        color: Color(0xFF801E48),
                        clipBehavior: Clip.antiAlias,
                        // Add This
                        child: MaterialButton(
                          minWidth: 300.0,
                          height: 25,
                          color: Color(0xFF801E48),
                          child: new Text('Chat',
                              style: new TextStyle(
                                  fontSize: 16.0, color: Colors.white)),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                      child: Material(
                        //Wrap with Material
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        color: Color(0xFF801E48),
                        clipBehavior: Clip.antiAlias,
                        // Add This
                        child: MaterialButton(
                          minWidth: 300.0,
                          height: 25,
                          color: Color(0xFF801E48),
                          child: new Text('Calender',
                              style: new TextStyle(
                                  fontSize: 16.0, color: Colors.white)),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text("Share"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButtons(
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                          ),
                          onPressed: null,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: IconButtons(
                            icon: Icon(
                              FontAwesomeIcons.google,
                            ),
                            onPressed: null,
                          ),
                        ),
                        IconButtons(
                          icon: Icon(
                            FontAwesomeIcons.facebook,
                          ),
                          onPressed: null,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: NetworkImage(
                            'https://geology.com/world/pakistan-province-map.gif',
                          ),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 15),
                      child: Text(
                        "Location",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [Text("xxxxxx,xxxx,xxxx"), Text('xxxx')],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [Text("xxxxxx,xxxx,xxxx"), Text('xxxx')],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 15),
                      child: Text(
                        "Social Media Profile",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButtons(
                            icon: Icon(
                              FontAwesomeIcons.twitter,
                            ),
                            onPressed: null,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: IconButtons(
                              icon: Icon(
                                FontAwesomeIcons.facebook,
                              ),
                              onPressed: null,
                            ),
                          ),
                          IconButtons(
                            icon: Icon(
                              FontAwesomeIcons.instagram,
                            ),
                            onPressed: null,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gallary",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Container(
                      child: GridView.count(
                        // Create a grid with 2 columns. If you change the scrollDirection to
                        // horizontal, this produces 2 rows.
                        crossAxisCount: 4,
                        crossAxisSpacing: 10,
                        shrinkWrap: true,
                        mainAxisSpacing: 10,
                        // Generate 100 widgets that display their index in the List.
                        children: List.generate(10, (index) {
                          return Center(
                              child: Container(
                                  color: Colors.red,
                                  child: Image.network(
                                      'https://i.pinimg.com/474x/33/d9/38/33d93813b6d46bc36b7c5de368dd10a6.jpg')
                                  // Text(
                                  //   'Item $index',
                                  //   style: Theme.of(context).textTheme.headline5,
                                  // ),
                                  ));
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "4 Comments",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    ExpandablePanel(
                      controller: categoryController,
                      header: Container(
                        margin: EdgeInsets.only(left: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8),
                                    child: Icon(
                                      FontAwesomeIcons.heart,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                Expanded(child: Text('Recommended')),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Container(
                                      color: Colors.grey,
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('4'),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: Text(('share'))),
                                Expanded(child: Icon(Icons.share)),
                                Expanded(child: Text(('Sort By Best'))),
                              ],
                            ),
                          ],
                        ),
                      ),
                      collapsed: Text("Nisar Ali Collapesed"),
                    ),
                  ],
                ),
              ),
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Container(
            //         height: 20,
            //         width: 20,
            //         color: Colors.red,
            //       ),
            //     ),
            //     Expanded(
            //       child: TextField(
            //         decoration: InputDecoration(hintText: "Comments"),
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }

  BoxDecoration kBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    );
  }
}

class IconButtons extends StatelessWidget {
  IconButtons({this.onPressed, this.icon});

  // final Color color;
  final Function onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.cyanAccent,
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
        color: Colors.black,
      ),
    );
  }
}
