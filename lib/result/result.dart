import 'package:flutter/material.dart';
import '../choices/choose.dart';
import 'CircleProgress.dart';


Widget calc(){
  if (bmi < 18.5) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.center,
          width: 150,
          height: 50,
          margin: EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text("Under weight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
       Container(
          alignment: AlignmentDirectional.center,
          width: 300,
          height: 50,
          margin: EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text("!!Go to doctor!!",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ),
      ],
    );


   // weightType ="underweight";

  } else if (bmi >= 18.5 && bmi < 24.9) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.center,
          width: 150,
          height: 50,
          margin: EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text("Normal",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),Container(
          alignment: AlignmentDirectional.center,
          width: 300,
          height: 50,
          margin: EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text("Stay healthy",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ),
      ],
    );
    //weightType = 'Normal';


  } else if (bmi >= 25 && bmi < 29.9) {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.center,
          width: 150,
          height: 50,
          margin: EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text("Overweight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),Container(
          alignment: AlignmentDirectional.center,
          width: 300,
          height: 50,
          margin: EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text("follow healthy diet plane",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ),
      ],
    );
    //weightType ='Overweight';

  } else {
    return Column(
      children: [
        Container(
          alignment: AlignmentDirectional.center,
          width: 150,
          height: 50,
          margin: EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text("obesity",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),Container(
          alignment: AlignmentDirectional.center,
          width: 300,
          height: 50,
          margin: EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Text("!!Go to Doctor",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
        ),
      ],
    );
    //weightType = 'Obese';

  }
}


class CircleProgress extends StatefulWidget {
  const CircleProgress({Key? key}) : super(key: key);
//variable = end in Tween
  @override
  State<CircleProgress> createState() => _CircleProgressState();
}

class _CircleProgressState extends State<CircleProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController progressController;
  late Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    progressController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    animation = Tween<double>(begin: 0, end: bmi).animate(progressController)
      ..addListener(() {
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    progressController.forward();
    calc();
    return Scaffold(
        backgroundColor: Color.fromRGBO(252, 239, 250, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(190, 149, 196, 1.0),
          title: Center(
              child: Text("BMI RESULT",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                margin: EdgeInsetsDirectional.all(20),
                width: 390,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(280),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: CustomPaint(
                    foregroundPainter: circleProgress(animation.value),
                    child: Container(
                      // margin: EdgeInsetsDirectional.all(20),
                      width: 220,
                      height: 220,
                      child: Center(
                        child: Text(
                          "BMI: "
                              "${double.parse(animation.value.toDouble().toStringAsFixed(1))}",
                          style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              ),
            ),
            calc(),
            /*Container(
              alignment: AlignmentDirectional.center,
              width: 150,
              height: 50,
              margin: EdgeInsetsDirectional.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Text("$weightType",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),*/
            /*Container(
              alignment: AlignmentDirectional.center,
              width: 300,
              height: 50,
              margin: EdgeInsetsDirectional.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Text("$",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),*/
            Container(
              margin: EdgeInsets.only(bottom: 10, left: 2, right: 2),
              height: 70,
              width: double.infinity,
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                color: Color.fromRGBO(35, 25, 66, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => choose()),
                        (Route<dynamic> route) => false,
                  );

                  // Add logic to calculate BMI and navigate to the result screen.
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Re - calculate",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.screen_rotation_alt,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));}}


