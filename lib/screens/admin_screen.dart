import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/screens/login_screen.dart';

class adminscreen extends StatefulWidget {
  const adminscreen({Key? key}) : super(key: key);

  @override
  _adminscreenState createState() => _adminscreenState();
}

class _adminscreenState extends State<adminscreen> {
  bool changebtn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                child: Text(
                  "UBIT",
                  style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(15, 175, 0, 0),
                child: Text(
                  "ADMIN",
                  style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(210, 220, 0, 0),
                child: Text(
                  "Ku",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 30, right: 20, left: 20, bottom: 0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Admin Id',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 15.0,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      changebtn = true;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 43.0,
                    width: changebtn ? 50 : 150,
                    child: Material(
                      borderRadius: BorderRadius.circular(changebtn ? 50 : 8),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: Center(
                        child: changebtn
                            ? Icon(Icons.done_all_outlined)
                            : Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.to(loginScreen());
                    },
                    child: new Text(
                      "Student Login",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
