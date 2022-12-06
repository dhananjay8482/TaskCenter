import 'dart:html';

import 'package:flutter/material.dart';
import '../utils/routes.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  bool passenable = true;

  moveToHome(BuildContext context) async{
    if((_formKey.currentState!.validate())){
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage() ),
      );
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: SingleChildScrollView(

        child:Column(
          children: [

            SizedBox(height:100),
            Text("Welcome "+ name+ (name==""?"":" !"),
              style: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:10),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 46,
                  horizontal: 32
              ),
              child: Form(
                key: _formKey,
                child: Column(
                    children:[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText:"Enter Username",

                          prefixIcon: Icon(Icons.account_circle_rounded, color: Colors.grey,) ,
                          labelText: "Username",
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value){
                          name = value;
                          setState(() {});
                        },
                        validator: (value){
                          if( value==null || value ==""){
                            return "Username Can't be Empty...";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height:15),
                      TextFormField(
                        // obscureText: true ,
                        obscureText: passenable,
                        decoration: InputDecoration(

                          prefixIcon:Icon(Icons.password_outlined, color: Colors.grey,
                           ),
                          hintText:"Enter Password",
                          labelText: "Password",
                            border: OutlineInputBorder(),
                            suffix: IconButton(onPressed: (){ //add Icon button at end of TextField
                              setState(() { //refresh UI
                                if(passenable){ //if passenable == true, make it false
                                  passenable = false;
                                }else{
                                  passenable = true; //if passenable == false, make it true
                                }
                              });
                            }, icon: Icon(passenable == true?Icons.remove_red_eye:Icons.remove_moderator))

                        ),
                        validator: (value){
                          if( value==null || value ==""){
                            return "Password Can't be Empty...";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height:30),

                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular((
                            changeButton?50:8
                        )),
                        child: InkWell(
                          onTap:() => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton ? 50 :  150 ,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton ? Icon(Icons.done, color: Colors.white,) : Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),

                          ),
                        ),
                      )
                    ]
                ),
              ),
            ),
            Container(

              alignment: Alignment.bottomCenter,
              child:Image.asset("images/login_image.png",fit:BoxFit.cover,
            ),

            ),
          ],

        ),
      ),
    ) ;
  }
}