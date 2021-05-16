import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(); //making the text editing controller with anonymous method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field Practice"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          margin: EdgeInsets.all(30),//making the margin 30 from all sides
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.lightBlue[100], //this is to give the background color for the inside textfield
                  filled: true, //this is to tell the machine its true to fill the box with the color
                  icon: Icon(Icons.adb), //this line is to make an icon outside the textfield
                  suffix: Container(width: 5, height: 5, color: Colors.amber[200],), //you cannot use both prefix and prefix text so you need to use suffix(the lines make a widget)
                  //suffix same with prefix but the text is behind
                  
                  prefixIcon: Icon(Icons.person),//this line making an icon inside the textfield
                  prefixText: "Name : ", //making an highlight text to hint people what to type inside the textfield
                  prefixStyle: TextStyle(color: Colors.amber[700], fontSize: 15,fontWeight: FontWeight.w600), //prefixstyle to make the prefix text change color and weight 
                  labelText: "Full Name", //label on top of the textfield
                  labelStyle:TextStyle(color: Colors.amber[900], fontSize: 25,fontWeight: FontWeight.w600),
                  hintText: "Your Full Name", //this is for adding a hint for what user are gonna type
                  hintStyle: TextStyle(fontSize: 12), //using textstyle to change the hint font
                  //border: InputBorder.none //this make the the textfield didnt have any outside lines
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)) //this line is to make the textfield look circular
                ),
                //obscureText: true, //to make it look like pasword it changes the text to ****
                //maxLength: 5, //to make it max 5 character input
                onChanged: (value) {
                  setState(() {}); //we need to put the set state so we can update the text we are typing
                },
                controller: controller,
              ),
              Text(
                controller.text, //we put controller text so we are gonna double the text
                style: TextStyle(
                  fontSize: 30, //making the size bigger
                  color: Colors.blue, //making the cp;pr pf the text blue
                  decoration: TextDecoration
                      .underline, //making textdecoration as underline to make a line under the text
                  decorationColor:
                      Colors.red, //making the underline color turn to red
                  decorationThickness:
                      1, //making the thickness of the underline is 1
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
