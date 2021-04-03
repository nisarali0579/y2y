import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const containerHieght = 80;
const activeColor = Color(0XFF1D1E33);
const InactiveColor = Color(0XFF111328);

const kTextStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25);
enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  static String id = "InputPage";

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = activeColor;
  Color femaleCardColor = InactiveColor;

  Gender selectedGender;

  // void updateGender(int gender){
  //   if(gender==1){
  //     if(maleCardColor==InactiveColor){
  //       maleCardColor=activeColor;
  //       femaleCardColor=InactiveColor;
  //     }
  //     else{
  //       maleCardColor=InactiveColor;
  //     }
  //   }
  //   if(gender==2){
  //     if(femaleCardColor==InactiveColor){
  //       femaleCardColor=activeColor;
  //       maleCardColor=InactiveColor;
  //     }
  //     else{
  //       femaleCardColor=InactiveColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0XFF0A0E21),
          body: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReuseCards(
                        color: selectedGender==Gender.male?activeColor:InactiveColor,
                        cardChild: reuseCardChild(
                          icon: FontAwesomeIcons.mars,
                          name: "Male",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selectedGender=Gender.female;
                        });
                      },
                      child: ReuseCards(
                        color: selectedGender==Gender.female?activeColor:InactiveColor,
                        cardChild: reuseCardChild(
                          icon: FontAwesomeIcons.venus,
                          name: "Female",
                        ),
                      ),
                    ),
                  ),
                ],
              )),
              Expanded(
                child: ReuseCards(color: activeColor),
              ),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: ReuseCards(color: activeColor),
                  ),
                  Expanded(
                    child: ReuseCards(color: activeColor),
                  ),
                ],
              )),
              Container(
                child: Center(
                    child: Text(
                  "CALCULATE",
                  style: kTextStyle,
                )),
                color: Colors.pink,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: containerHieght.toDouble(),
              )
            ],
          )),
    );
  }
}

class reuseCardChild extends StatelessWidget {
  reuseCardChild({this.icon, this.name});

  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          name,
          style: kTextStyle,
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class ReuseCards extends StatelessWidget {
  ReuseCards({@required this.color, this.cardChild});

  Color color;
  Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        // color: Color(0XFF1D1E33),
        borderRadius: BorderRadius.circular(22.2),
      ),
    );
  }
}
//Color(0XFF111328);
