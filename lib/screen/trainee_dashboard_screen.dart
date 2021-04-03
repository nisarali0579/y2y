import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:popup_menu/popup_menu.dart';

const ktextHeadlineStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
const ktextSubHeadlineStyle =
    TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);

CalendarController _calendarController = CalendarController();

class TaineeDashboard extends StatefulWidget {
  static String id = "TaineeDashboard";

  @override
  _TaineeDashboardState createState() => _TaineeDashboardState();
}

class _TaineeDashboardState extends State<TaineeDashboard> {
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Footer(),
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
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Column(
              children: [
                Container(
                  decoration: kBoxDecoration(),
                  child: TableCalendar(
                    calendarController: _calendarController,
                  ),
                ),
                SizedBox(height: 20,),
                Text("Upcoming Trainings",style: ktextHeadlineStyle.copyWith(color: Colors.red),),
                Container(
                  height: 250,
               //   height: MediaQuery.of(context).size.height,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Pending Trainings",style: ktextHeadlineStyle.copyWith(color: Colors.black),),
                SizedBox(height: 20,),
                Container(
                  height: 250,
                  //   height: MediaQuery.of(context).size.height,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        decoration: kBoxDecoration(),
                        child: packageCard(context),
                      ),
                    ],
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
  Widget packageCard(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
      //  height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.whiteColor,
         // border: Border.all(color: AppColors.blackColor, width: 2),
        ),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("#",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
                  Text("Package",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
                  Text("startTime",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
                  Text("endTime",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
                  Text("Date",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
              child: Container(
                 height: MediaQuery.of(context).size.height*.03,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("1",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
                      Text("1 hour",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
                      Text("3:00 AM",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
                      Text("4:00 AM",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
                      Text("11-11-21",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
                    ],
                  ),
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.only(top: 12),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text("No. of trainees",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
            //       SizedBox(width: 30,),
            //       Text("Price",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
            //     ],
            //   ),
            // ),
            //
            // Padding(
            //   padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
            //   child: Container(
            //     color: Colors.grey,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Text("1",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
            //         SizedBox(width: 80,),
            //         Text("\$3",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
            //       ],
            //     ),
            //   ),
            // ),

            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chat, size: 25, color: AppColors.blackColor,),
                  // SizedBox(width: 30,),
                  // Icon(Icons.delete, size: 25, color: AppColors.blackColor,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
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

class AppColors{
  static const redColor = const Color(0xFFDC3545);
  static const whiteColor = const Color(0xFFFFFFFF);
  static const blackColor = const Color(0xFF252C41);
}

class Footer extends StatelessWidget {

  GlobalKey menuKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    PopupMenu.context = context;
    return Container(
      height: 112,
      width: MediaQuery.of(context).size.width,
      color: AppColors.blackColor,
      padding: const EdgeInsets.all(8.0),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(

                children: [
                  Text("Follow US", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
                  InkWell(
                    onTap: (){
                      popupMenu();
                    },
                    child: Row(
                      key: menuKey,
                      children: [
                        Image.asset("assets/twitter.png"),
                        Image.asset("assets/youtube.png"),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/facebook.png"),
                      Image.asset("assets/insta.png"),
                    ],
                  ),

                ],
              ),

              Column(
                children: [
                  Icon(Icons.shopping_cart, size: 50, color: AppColors.whiteColor,),
                  Text("Shop", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
                ],
              ),

              Column(
                children: [
                  Image.asset("assets/blog.png", height: 50,),
                  Text("Blog", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Links", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
                  Text("FAQs", style: TextStyle(color: Colors.grey, fontSize: 12),),
                  Text("Privacy", style: TextStyle(color: Colors.grey, fontSize: 12),),
                  Text("Terms of use", style: TextStyle(color: Colors.grey, fontSize: 12),),
                  Text("Contact us", style: TextStyle(color: Colors.grey, fontSize: 12),),
                ],
              ),

            ],
          ),
          SizedBox(height: 10,),
       //   Text(AppStrings.copyRightString, style: TextStyle(color: AppColors.redColor, fontSize: 14),),
        ],
      ),
    );
  }

  void popupMenu() {
    PopupMenu menu = PopupMenu(
      // backgroundColor: Colors.teal,
      // lineColor: Colors.tealAccent,
        maxColumn: 2,
        items: [
          MenuItem(title: 'Twitter', image: Image.asset('assets/twitter.png')),
          MenuItem(title: 'Youtube', image: Image.asset('assets/youtube.png')),
          MenuItem(title: 'Facebook', image: Image.asset('assets/facebook.png')),
          MenuItem(title: 'Instagram', image: Image.asset('assets/insta.png')),
        ],
        onClickMenu: onClickMenu,
        stateChanged: stateChanged,
        onDismiss: onDismiss);
    menu.show(widgetKey: menuKey);
  }

  void stateChanged(bool isShow) {
    print('menu is ${isShow ? 'showing' : 'closed'}');
  }

  void onClickMenu(MenuItemProvider item) {
    print('Click menu -> ${item.menuTitle}');
  }

  void onDismiss() {
    print('Menu is dismiss');
  }
}

