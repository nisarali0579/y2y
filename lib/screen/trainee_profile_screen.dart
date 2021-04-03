import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:popup_menu/popup_menu.dart';

const ktextHeadlineStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
const ktextSubHeadlineStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);

class TaineeProfileScreen extends StatefulWidget {
  static String id = "TaineeProfileScreen";

  @override
  _TaineeProfileScreenState createState() => _TaineeProfileScreenState();
}

class _TaineeProfileScreenState extends State<TaineeProfileScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  bottomNavigationBar: Footer(),
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
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: kBoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Stack(children: [
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset('assets/pic.jpg')),
                        // Image(image: AssetImage('assets/pic.jpg')),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                (Icons.edit_off),
                                color: Colors.red,
                              ),
                            ))
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("James White", style: ktextHeadlineStyle),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("nisaricup@gmail.com",
                                style: ktextSubHeadlineStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("Football Trainer",
                                style: ktextSubHeadlineStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("3 Years of Experience",
                                style: ktextSubHeadlineStyle),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Location",
                              style: ktextSubHeadlineStyle.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.normal)),
                          Text("Ave.14,xxxx,xx, CA",
                              style: ktextSubHeadlineStyle),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Training Type:",
                              style: ktextSubHeadlineStyle.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.normal)),
                          Text("In Person", style: ktextSubHeadlineStyle),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Social Media", style: ktextSubHeadlineStyle),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 15),
                            child: Row(
                              children: [
                                SocialMediaIcon(
                                  icon: Icon(FontAwesomeIcons.twitter),
                                  onPressed: () {},
                                ),
                                SocialMediaIcon(
                                  icon: Icon(FontAwesomeIcons.youtube),
                                  onPressed: () {},
                                ),
                                SocialMediaIcon(
                                  icon: Icon(FontAwesomeIcons.facebook),
                                  onPressed: () {},
                                ),
                                SocialMediaIcon(
                                  icon: Icon(FontAwesomeIcons.instagram),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: EditBottons(
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Container(
                decoration: kBoxDecoration(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        color: Color(0XFF252C41),
                        child: TabBar(
                          isScrollable: true,
                          // indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.yellow,
                          indicatorWeight: 10.0,
                          indicator: BoxDecoration(color: Colors.red),
                          controller: _controller,
                          tabs: [
                            new Tab(
                                child: Text("Reviews", style: kTapTextStyle)),
                            new Tab(
                                child: Text("Reviewed", style: kTapTextStyle)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        controller: _controller,
                        children: [
                          new Container(
                            height: 1,
                            child: ListView(children: [
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Nisar Ali"),
                                subtitle: Text(
                                    'ajfideifheihafdifdf difidhafa dfd af d faf difidhafdhf d f hfiahfdhif  '),
                              ),
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Jane Pin"),
                                subtitle: Text(
                                    'ajfideifheihafdifdf difidhafa dfd af d faf difidhafdhf d f hfiahfdhif  '),
                              ),
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Jane Pin"),
                                subtitle: Text(
                                    'ajfideifheihafdifdf difidhafa dfd af d faf difidhafdhf d f hfiahfdhif  '),
                              ),
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Jane Pin"),
                                subtitle: Text(
                                    'ajfideifheihafdifdf difidhafa dfd af d faf difidhafdhf d f hfiahfdhif  '),
                              ),
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Jane Pin"),
                                subtitle: Text(
                                    'ajfideifheihafdifdf difidhafa dfd af d faf difidhafdhf d f hfiahfdhif  '),
                              ),
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Jane Pin"),
                                subtitle: Text(
                                    'ajfideifheihafdifdf difidhafa dfd af d faf difidhafdhf d f hfiahfdhif  '),
                              ),
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Jane Pin"),
                                subtitle: Text(
                                    'ajfideifheihafdifdf difidhafa dfd af d faf difidhafdhf d f hfiahfdhif  '),
                              ),
                            ]),
                          ),
                          new Card(
                            child: new ListTile(
                              leading: const Icon(Icons.location_on),
                              title: new Text(
                                  'Latitude: 48.09342\nLongitude: 11.23403'),
                              trailing: new IconButton(
                                  icon: const Icon(Icons.my_location),
                                  onPressed: () {}),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
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

// class TextFieldBottumLine extends StatelessWidget {
//   TextFieldBottumLine({this.onChanged, this.name});
//
//   final Function onChanged;
//   final String name;
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Column(
//         children: [
//           SizedBox(
//             height: 10,
//           ),
//           Text(name),
//           Container(
//             width: 100,
//             child: TextField(
//               onChanged: onChanged,
//               decoration: InputDecoration(
//                 focusedBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(color: Colors.red),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

class EditBottons extends StatelessWidget {
  EditBottons({this.onPressed});

  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(22),
      ),
      height: 40,
      width: 100,
      child: MaterialButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Text(
              "EDIT",
              style: ktextSubHeadlineStyle.copyWith(color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.edit_off,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  SocialMediaIcon({this.onPressed, this.icon});

  final Function onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.red,
      child: IconButton(
        icon: icon,
        iconSize: 20,
        onPressed: onPressed,
        color: Colors.white,
      ),
    );
  }
}
// class Footer extends StatelessWidget {
//
//   GlobalKey menuKey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     PopupMenu.context = context;
//     return Container(
//       height: 112,
//       width: MediaQuery.of(context).size.width,
//       color: AppColors.blackColor,
//       padding: const EdgeInsets.all(8.0),
//
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//
//               Column(
//
//                 children: [
//                   Text("Follow US", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
//                   InkWell(
//                     onTap: (){
//                       popupMenu();
//                     },
//                     child: Row(
//                       key: menuKey,
//                       children: [
//                         Image.asset("assets/twitter.png"),
//                         Image.asset("assets/youtube.png"),
//                       ],
//                     ),
//                   ),
//                   Row(
//                     children: [
//                       Image.asset("assets/facebook.png"),
//                       Image.asset("assets/insta.png"),
//                     ],
//                   ),
//
//                 ],
//               ),
//
//               Column(
//                 children: [
//                   Icon(Icons.shopping_cart, size: 50, color: AppColors.whiteColor,),
//                   Text("Shop", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
//                 ],
//               ),
//
//               Column(
//                 children: [
//                   Image.asset("assets/blog.png", height: 50,),
//                   Text("Blog", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
//                 ],
//               ),
//
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text("Links", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
//                   Text("FAQs", style: TextStyle(color: Colors.grey, fontSize: 12),),
//                   Text("Privacy", style: TextStyle(color: Colors.grey, fontSize: 12),),
//                   Text("Terms of use", style: TextStyle(color: Colors.grey, fontSize: 12),),
//                   Text("Contact us", style: TextStyle(color: Colors.grey, fontSize: 12),),
//                 ],
//               ),
//
//             ],
//           ),
//           SizedBox(height: 10,),
//           //   Text(AppStrings.copyRightString, style: TextStyle(color: AppColors.redColor, fontSize: 14),),
//         ],
//       ),
//     );
//   }
//
//   void popupMenu() {
//     PopupMenu menu = PopupMenu(
//       // backgroundColor: Colors.teal,
//       // lineColor: Colors.tealAccent,
//         maxColumn: 2,
//         items: [
//           MenuItem(title: 'Twitter', image: Image.asset('assets/twitter.png')),
//           MenuItem(title: 'Youtube', image: Image.asset('assets/youtube.png')),
//           MenuItem(title: 'Facebook', image: Image.asset('assets/facebook.png')),
//           MenuItem(title: 'Instagram', image: Image.asset('assets/insta.png')),
//         ],
//         onClickMenu: onClickMenu,
//         stateChanged: stateChanged,
//         onDismiss: onDismiss);
//     menu.show(widgetKey: menuKey);
//   }
//
//   void stateChanged(bool isShow) {
//     print('menu is ${isShow ? 'showing' : 'closed'}');
//   }
//
//   void onClickMenu(MenuItemProvider item) {
//     print('Click menu -> ${item.menuTitle}');
//   }
//
//   void onDismiss() {
//     print('Menu is dismiss');
//   }
// }
// class AppColors{
//   static const redColor = const Color(0xFFDC3545);
//   static const whiteColor = const Color(0xFFFFFFFF);
//   static const blackColor = const Color(0xFF252C41);
// }
