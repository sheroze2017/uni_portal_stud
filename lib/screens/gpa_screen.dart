// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:getx_app/user_model.dart';
import 'package:get/get.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class gpa_calculator extends StatefulWidget {
  gpa_calculator({Key? key}) : super(key: key);
  @override
  _gpa_calculatorState createState() => _gpa_calculatorState();
}

class _gpa_calculatorState extends State<gpa_calculator> {
  final course = [].obs;

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  UserModel userModel = UserModel();
  @override
  void initState() {
    super.initState();
    userModel.gpa = List<String>.empty(growable: true);
    userModel.gpa!.add("");
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('GPA'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  icon: Icon(Icons.book_outlined),
                  text: 'GPA',
                ),
                Tab(
                  icon: Icon(Icons.book_outlined),
                  text: 'CGPA',
                ),
              ],
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.greenAccent, Colors.green],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft)),
            ),
          ),
          body: TabBarView(
            children: [
              gpaUI(),
              Cgpa(),
            ],
          ),
        ),
      ),
    );
  }

  Widget gpaUI() {
    return Form(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _Cgp(),
            Center(
              child: FormHelper.submitButton("Calculate", () {
                print(course);
              }),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _Cgp() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "GPA",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          // GPAUI(0)
          ListView.separated(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [GPAUI(index)],
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: userModel.gpa!.length,
          )
        ],
      );

  Widget Cgpa() => Form(
      child: SingleChildScrollView(
          // child: Padding(
          //   padding: EdgeInsets.all(10),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     children: [
          //       _Cgp(),
          //       Center(
          //         child: FormHelper.submitButton("Calculate", () {
          //           if (validateandCal()) {
          //             print(userModel.toJson());
          //           }
          //         }),
          //       ),
          //     ],
          //   ),
          // ),
          ));

  Widget GPAUI(index) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Flexible(
            child: FormHelper.inputFieldWidget(
              context,
              // Icon(
              //   Icons.book_outlined,
              //   color: Colors.greenAccent,
              // ),
              "CourseNo_$index",
              "",
              (onValidateval) {
                // if (onValidateval.isEmpty) {
                //   return 'Field ${index + 1} can`t be empty';
                // }
                // return null;
              },
              (onSavedVal) {
                //  userModel.gpa![index] = int.parse(onSavedVal) as String;
                course.add(int.parse(onSavedVal));
              },
              initialValue: "",
              borderColor: Colors.green,
              borderFocusColor: Colors.greenAccent,
              borderRadius: 2,
              fontSize: 14,
              paddingLeft: 0,
              paddingRight: 0,
            ),
          ),
          Visibility(
            child: SizedBox(
              width: 35,
              child: IconButton(
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.lightGreen,
                ),
                onPressed: () {
                  addgpa();
                },
              ),
            ),
            visible: index == userModel.gpa!.length - 1,
          ),
          Visibility(
            child: SizedBox(
              width: 35,
              child: IconButton(
                icon: Icon(
                  Icons.remove_circle,
                  color: Colors.redAccent,
                ),
                onPressed: () {
                  removegpa(index);
                  course.removeAt(index);
                },
              ),
            ),
            visible: index > 0,
          ),
        ],
      ),
    );
  }

  void addgpa() {
    setState(() {
      userModel.gpa!.add("");
    });
  }

  void removegpa(index) {
    setState(() {
      if (userModel.gpa!.length > 1) {
        userModel.gpa!.removeAt(index);
      }
    });
  }

  // bool validateandCal() {
  //   final form = globalKey.currentState;
  //   if (form!.validate()) {
  //     form.save();
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
