import 'package:flutter/material.dart';

class course_screen extends StatefulWidget {
  const course_screen({Key? key}) : super(key: key);

  @override
  _course_screenState createState() => _course_screenState();
}

class _course_screenState extends State<course_screen> {
  bool toggleVal = false;
  String dropdownValue = 'CS';
  List a = [
    'images/sem1.png',
    'images/sem2.png',
    'images/sem3.png',
    'images/sem4.png',
    'images/sem5.png',
    'images/sem6.png',
    'images/sem7.png',
    'images/sem8.png',
  ];
  bool onclick = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('CS'),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(), primary: Colors.grey),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('SE'),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(), primary: Colors.grey),
                    ),
                  ],
                ),
                GridView.builder(
                  padding: EdgeInsets.fromLTRB(5, 25, 5, 5),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                  ),
                  itemCount: a.length,
                  itemBuilder: (context, index) {
                    return Center(
                        child: Image.asset(
                      '${a[index]}',
                    ));
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget cs() {
  List a = [
    'images/sem1.png',
    'images/sem2.png',
    'images/sem3.png',
    'images/sem4.png',
    'images/sem5.png',
    'images/sem6.png',
    'images/sem7.png',
    'images/sem8.png',
  ];
  return GridView.builder(
    padding: EdgeInsets.fromLTRB(5, 25, 5, 5),
    shrinkWrap: true,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
    ),
    itemCount: a.length,
    itemBuilder: (context, index) {
      return Center(
          child: Image.asset(
        '${a[index]}',
      ));
    },
  );
}
