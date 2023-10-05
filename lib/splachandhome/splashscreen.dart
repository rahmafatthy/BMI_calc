import 'package:flutter/material.dart';
import 'package:untitled5/choices/choose.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Color _color = Color.fromRGBO(190, 149, 196, 1.0);
  Color _color2=Colors.white.withOpacity(0.5);
  void initState() {

    Future.delayed(Duration(seconds: 2)).then((value) {
      _color =   Color.fromRGBO(252, 239, 230, 1).withOpacity(0.5);
      _color2=Color.fromRGBO(190, 149, 196, 0.5);


      setState(() {});
    });
    Future.delayed(Duration(seconds: 5)).then((value) =>

       Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) =>choose()),
            (Route<dynamic> route) => false,
      )
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        color: _color ,
        child: Center(
          child: Container(

              margin: EdgeInsetsDirectional.all(10),
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: _color2,
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              height: 250,
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 80,
                      width: 80,
                      child: Image(
                          image: AssetImage("images/balance.png"),
                          fit: BoxFit.fill)),
                  SizedBox(width: 22),
                  Text(
                    "BMI",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1,
                      color: Colors.black,
                    ),
                  )
                ],
              )),
        ),
      )


      //_screen(Color.fromRGBO(190, 149, 196, 1.0),Colors.white.withOpacity(0.5)),
     // _screen(Colors.white.withOpacity(0.5),Color.fromRGBO(190, 149, 196, 0.5),)

    );
  }

  /*Container _screen(Color color,Color color2) {
    return Container(
      color: color ,
      child: Center(
        child: Container(
            margin: EdgeInsetsDirectional.all(10),
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: color2,
                  spreadRadius: 2,
                  blurRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            height: 250,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 80,
                    width: 80,
                    child: Image(
                        image: AssetImage(_image),
                        fit: BoxFit.fill)),
                SizedBox(width: 22),
                Text(
                  "BMI",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1,
                    color: Colors.black,
                  ),
                )
              ],
            )),
      ),
    )*/

}
