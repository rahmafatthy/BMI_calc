



import 'package:flutter/material.dart';

import '../result/result.dart';
 double bmi=50;

class choose extends StatefulWidget {
  const choose({Key? key}) : super(key: key);

  @override
  State<choose> createState() => _chooseState();
}

class _chooseState extends State<choose> {
  String? gender;
  int weight = 45;
  int height = 150;
  int age = 20;
  double calculateBMI() {
    return weight / ((height / 100) * (height / 100));
  }
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 239, 250, 1),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(190, 149, 196, 1.0),
          title: Center(
              child: Text(
            "BMI CAL",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ))),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, left: 15),
              child: Text("Gender:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
            Row(
              children: [
                _genderType(type: "Female", image: "woman"),
                SizedBox(width: 20),
                _genderType(type: "Male", image: "boyfriend")
              ],
            ),
            //weight continar
            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                //width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(224, 177, 203, 1.0),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Weight",style: TextStyle(color: Colors.white ,fontSize: 18,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        FloatingActionButton(
                          backgroundColor:Color.fromRGBO(35, 25, 66, 1),
                          onPressed: () {

                            setState(( ) {
                              weight-=1;

                            });
                          },
                          child: Icon(Icons.remove, color: Colors.white, size: 25),
                        ),

                        Container(
                          alignment: AlignmentDirectional.center,
                          child: Text("$weight",style: TextStyle(color: Colors.white ,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),

                        FloatingActionButton(
                          backgroundColor: Color.fromRGBO(35, 25, 66, 1),
                          onPressed: () {

                            setState(() {
                              weight+=1;
                             // print(value);
                            });
                          },
                          child: Icon(Icons.add,color: Colors.white,size: 25),
                        ),

                      ],
                    ),
                  ],
                )),
            //height continar
            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                //width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(224, 177, 203, 1.0),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Height",style: TextStyle(color: Colors.white ,fontSize: 18,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        FloatingActionButton(
                          backgroundColor:Color.fromRGBO(35, 25, 66, 1),
                          onPressed: () {

                            setState(( ) {
                              height-=1;

                            });
                          },
                          child: Icon(Icons.remove, color: Colors.white, size: 25),
                        ),

                        Container(
                          alignment: AlignmentDirectional.center,
                          child: Text("$height",style: TextStyle(color: Colors.white ,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),

                        FloatingActionButton(
                          backgroundColor: Color.fromRGBO(35, 25, 66, 1),
                          onPressed: () {

                            setState(() {
                              height+=1;
                              // print(value);
                            });
                          },
                          child: Icon(Icons.add,color: Colors.white,size: 25),
                        ),

                      ],
                    ),
                  ],
                )),
            //age continar
            Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
                //width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(224, 177, 203, 1.0),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Age",style: TextStyle(color: Colors.white ,fontSize: 18,fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        FloatingActionButton(
                          backgroundColor:Color.fromRGBO(35, 25, 66, 1),
                          onPressed: () {

                            setState(( ) {
                              age-=1;

                            });
                          },
                          child: Icon(Icons.remove, color: Colors.white, size: 25),
                        ),

                        Container(
                          alignment: AlignmentDirectional.center,
                          child: Text("$age",style: TextStyle(color: Colors.white ,fontSize: 18,fontWeight: FontWeight.bold)),
                        ),

                        FloatingActionButton(
                          backgroundColor: Color.fromRGBO(35, 25, 66, 1),
                          onPressed: () {

                            setState(() {
                              age+=1;
                              // print(value);
                            });
                          },
                          child: Icon(Icons.add,color: Colors.white,size: 25),
                        ),

                      ],
                    ),
                  ],
                )),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  height: 50,
                  width:380,
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(35, 25, 66, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      bmi = calculateBMI();


                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) =>CircleProgress()),
                            (Route<dynamic> route) => false,
                      )

                      ;


                      // Add logic to calculate BMI and navigate to the result screen.
                    },
                    child: Icon(
                      Icons.equalizer,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),

              ],
            ),

          ]),
    );
  }
  Widget _genderType({required String? type, required String image}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
          ),
          height: 150,
          width: 150,
          child: Image(image: AssetImage("images/$image.png"), fit: BoxFit.fill),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 2),
              ),
            ],
            color: Color.fromRGBO(200, 182, 255, 1.0),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Radio(
                    activeColor: Colors.purple,
                    value: "$type",
                    groupValue: gender,
                    onChanged: (val) {
                      setState(() {
                        gender = val;
                      });
                    },
                  ),
                  Text(
                    "$type",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

 /* Widget spicialbtn(String name, int value) {
    return Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(left: 7,right: 7,top: 3,bottom: 3),
        //width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(224, 177, 203, 1.0),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("$name",style: TextStyle(color: Colors.white ,fontSize: 18,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                FloatingActionButton(
                  backgroundColor:Color.fromRGBO(35, 25, 66, 1),
                  onPressed: () {

                    setState(( ) {
                      weight-=1;

                    });
                  },
                  child: Icon(Icons.remove, color: Colors.white, size: 25),
                ),

                Container(
                  alignment: AlignmentDirectional.center,
                  child: Text("$value",style: TextStyle(color: Colors.white ,fontSize: 18,fontWeight: FontWeight.bold)),
                ),

                   FloatingActionButton(
                     backgroundColor: Color.fromRGBO(35, 25, 66, 1),
                    onPressed: () {

                      setState(() {
                        weight+=1;
                        print(value);
                      });
                    },
                    child: Icon(Icons.add,color: Colors.white,size: 25),
                  ),

              ],
            ),
          ],
        ));}*/

}
