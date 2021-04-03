import 'package:flutter/material.dart';
import 'package:y2y/screen/profile_screen.dart';
import 'package:y2y/screen/input_page.dart';
import 'package:y2y/screen/profile_1_screen.dart';
import 'package:y2y/screen/Artbort_1_Screen.dart';

import 'package:y2y/screen/trainee_dashboard_screen.dart';
import 'package:y2y/screen/trainee_payment_screen.dart';
import 'package:y2y/screen/trainee_pending_screen.dart';
import 'package:y2y/screen/trainee_profile_screen.dart';
import 'package:y2y/screen/trainee_Trainer_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: "Y2Y App",
      initialRoute: 'TaineeDashboard',
      routes: {
        'profileScreen':(context) => profileScreen(),
        'InputPage':(context) => InputPage(),
        'Profile1Screen':(context) => Profile1Screen(),
        'Artbord1Screen':(context) => Artbord1Screen(),
        'TaineeDashboard':(context) => TaineeDashboard(),
        'TaineePayment':(context) => TaineePayment(),
        'TaineePendingScreen':(context) => TaineePendingScreen(),
        'TaineeProfileScreen':(context) => TaineeProfileScreen(),
        'TaineeTrainerListScreen':(context) => TaineeTrainerListScreen(),
      },
    );
  }
}


//Color(0XFF252C41),
// Widget packageCard(BuildContext context){
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//     child: Container(
//       width: MediaQuery.of(context).size.width * 0.9,
//       height: MediaQuery.of(context).size.height * 0.15,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: AppColors.whiteColor,
//         // border: Border.all(color: AppColors.blackColor, width: 2),
//       ),
//
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("#",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
//                 Text("Package",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
//                 Text("startTime",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
//                 Text("endTime",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
//                 Text("        Date",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
//               ],
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
//             child: Container(
//               color: Colors.grey,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("1",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
//                   Text("1 hour",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
//                   Text("3:00 AM",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
//                   Text("4:00 AM",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
//                   Text("11-11-21",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
//                 ],
//               ),
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(top: 12),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("No. of trainees",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
//                 SizedBox(width: 30,),
//                 Text("Price",style: TextStyle(color: AppColors.redColor, fontSize: 10),),
//               ],
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(left: 8, right: 8, top: 4),
//             child: Container(
//               color: Colors.grey,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text("1",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
//                   SizedBox(width: 80,),
//                   Text("\$3",style: TextStyle(color: AppColors.blackColor, fontSize: 10),),
//                 ],
//               ),
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(top: 12),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.edit, size: 25, color: AppColors.blackColor,),
//                 SizedBox(width: 30,),
//                 Icon(Icons.delete, size: 25, color: AppColors.blackColor,),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// BoxDecoration kBoxDecoration() {
//   return BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.all(Radius.circular(10)),
//     boxShadow: [
//       BoxShadow(
//         color: Colors.grey.withOpacity(0.5),
//         spreadRadius: 5,
//         blurRadius: 7,
//         offset: Offset(0, 3), // changes position of shadow
//       ),
//     ],
//   );
// }

// class AppColors{
//   static const redColor = const Color(0xFFDC3545);
//   static const whiteColor = const Color(0xFFFFFFFF);
//   static const blackColor = const Color(0xFF252C41);
// }