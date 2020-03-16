import 'package:flutter/material.dart';
import 'package:ggg/screens/secondscreen/secondscreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleText = Text.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(text: "G", style: 
            TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, 
              fontSize: 30.0, color: Colors.white)),
          TextSpan(text: "et yo ", style: TextStyle(fontWeight: FontWeight.bold, 
            fontSize: 30.0, color: Colors.white)),
          TextSpan(text: "G", style: 
            TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, 
              fontSize: 30.0, color: Colors.white)),
          TextSpan(text: "irl a ", style: TextStyle(fontWeight: FontWeight.bold, 
            fontSize: 30.0, color: Colors.white)),
          TextSpan(text: "G", style: 
            TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, 
              fontSize: 30.0, color: Colors.white)),
          TextSpan(text: "ift", style: TextStyle(fontWeight: FontWeight.bold, 
            fontSize: 30.0, color: Colors.white)),
        ],
      ),
      textAlign: TextAlign.center,
    );
    final emailField = TextField(
      obscureText: false,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
        enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
            borderSide: BorderSide(color: Colors.white)
          )
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
        enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0), 
            borderSide: BorderSide(color: Colors.white)
          )
      ),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFFB71C1C),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen())
        );
      },
        child: Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold)
        ),
      )
    );

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Center(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: ListView(
              children: <Widget>[
                SizedBox(height: 10.0),
                titleText,
                SizedBox(height: 35.0),
                SizedBox(
                  height: 100.0,
                  child: Image.asset(
                    "images/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButton,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}