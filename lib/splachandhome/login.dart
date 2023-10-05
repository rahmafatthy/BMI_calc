import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = GlobalKey<FormState>();

 @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color.fromRGBO(35, 25, 66, 1),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsetsDirectional.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "BMI",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                key:_formKey,
                child: Container(
                  // padding:EdgeInsetsDirectional.all(20),
                  width: double.infinity,
                  height: 550,
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 10,
                    top: 5,
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(252, 239, 250, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                          width: 80,
                          height: 80,
                          child: Image(image: AssetImage("images/balance.png"))),
                      SizedBox(height: 15),
                      Text(
                        "WELCOME BACK",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(35, 25, 66, 1),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "E-MAIL",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(35, 25, 66, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Material(
                        borderRadius: BorderRadius.circular(25),
                        elevation: 10,
                        child: TextFormField(
                          validator: (value) {
                            bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value ?? "");
                            if (emailValid == false) {
                              return "Email didn't match";
                            }
                            if (value!.isEmpty) {
                              return "The Field is empty";
                            } else if (value.length < 11) {
                              return "the numbers in less than 11 digits";
                            }
                            return null;
                          },

                          decoration: InputDecoration(

                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(12),


                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(35, 25, 66, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Material(
                        borderRadius: BorderRadius.circular(25),
                        elevation: 10,
                        child: TextFormField(
                          validator: (value){
                            if (value !.isEmpty)
                            {  return "The Filled is empty";}
                            else if(value !.length<6) {
                              return "password can't be less then 6 numbers";
                            }
                            return null;
                          },
                         // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(12),
                            label: Text("******"),
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Phone Number",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(35, 25, 66, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Material(
                        borderRadius: BorderRadius.circular(25),
                        elevation: 10,
                        child: TextFormField(
                          validator: (value){
                            if (value !.isEmpty)
                            {  return "The Filled is empty";}
                            else if(value !.length<11) {
                              return "number less than 11";
                            }
                            return null;
                          },
                          // keyboardType: TextInputType.number,
                          decoration: InputDecoration(

                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.all(12),
                            label: Text("01154684"),
                            border:
                            OutlineInputBorder(borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          _formKey.currentState!.validate();                        },
                        child: Material(
                          borderRadius: BorderRadius.circular(25),
                          elevation: 20,
                          child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(35, 25, 66, 1),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Center(
                                  child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ))),
                        ),
                      )


                    ],
                  ),
                ),
              ),
          SizedBox(height: 40,),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text(
        "Already Have Account?",
        style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        ),),
      Text(
        "Log In",
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 16,
        ),),
      ],
    ) ],
          ),
        ),
      ),
    );
  }
}
