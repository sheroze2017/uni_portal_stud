import 'package:flutter/material.dart';
import 'package:getx_app/screens/courses.dart';
import 'package:getx_app/screens/gpa_screen.dart';
import 'package:sizer/sizer.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  _home_screenState createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  VoidCallback? onClicked;

  @override
  Widget build(BuildContext context) {
    var scrsize = MediaQuery.of(context).size;
    var height = scrsize.height;
    var width = scrsize.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Umaer Basha Institute',
          style: TextStyle(fontSize: 12),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: scrsize.height * 0.22,
              width: scrsize.width,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(
                    'Sheroze Rehman',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      '3rd Year',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 10, left: 10, right: 10)),
                Container(
                  height: 65,
                  width: width / 3.5,
                  child: Card(
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Icon(Icons.calculate_outlined),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Gpa Calculate",
                              style: TextStyle(
                                  fontSize: 6, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    elevation: 8,
                    shadowColor: Colors.green,
                    margin: EdgeInsets.all(3),
                  ),
                ),
                Container(
                  height: 65,
                  width: width / 3.5,
                  child: Card(
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Icon(Icons.score_rounded),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Marks",
                              style: TextStyle(
                                  fontSize: 6, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    elevation: 8,
                    shadowColor: Colors.green,
                    margin: EdgeInsets.all(3),
                  ),
                ),
                Container(
                  height: 65,
                  width: width / 3.5,
                  child: Card(
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Icon(Icons.school_outlined),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Attendence",
                              style: TextStyle(
                                  fontSize: 6, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    elevation: 8,
                    shadowColor: Colors.green,
                    margin: EdgeInsets.all(3),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(children: [
              Padding(
                  padding: EdgeInsets.only(
                      top: 18, left: width / 10, right: width / 10)),
              Container(
                height: 65,
                width: width / 3.5,
                child: Card(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Icon(Icons.poll_outlined)),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Polls",
                            style: TextStyle(
                                fontSize: 6, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(3),
                ),
              ),
              Container(
                height: 65,
                width: width / 3.5,
                child: Card(
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Icon(Icons.image)),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Gallery",
                            style: TextStyle(
                                fontSize: 6, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  elevation: 8,
                  shadowColor: Colors.green,
                  margin: EdgeInsets.all(3),
                ),
              ),
            ]),
            SizedBox(
              height: 12,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Card(
                child: Container(
                    height: 85,
                    width: width / 3,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.book),
                          Text("Student Enroll",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 8)),
                          Text("1600+",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black))
                        ],
                      ),
                    )),
                elevation: 8,
                shadowColor: Colors.grey,
                color: Colors.black12,
                margin: EdgeInsets.all(20),
                shape: CircleBorder(
                  side: BorderSide(width: 1, color: Colors.white),
                ),
              ),
              Card(
                child: Container(
                    height: 85,
                    width: width / 3,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.school_rounded),
                          Text("Student Passed",
                              style: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 8)),
                          Text("20000+",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black))
                        ],
                      ),
                    )),
                elevation: 8,
                shadowColor: Colors.grey,
                color: Colors.black12,
                margin: EdgeInsets.all(20),
                shape: CircleBorder(
                  side: BorderSide(width: 1, color: Colors.white),
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                      height: 85,
                      width: width / 3,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.book),
                            Text("Teacher Count",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 8)),
                            Text("80+",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.black))
                          ],
                        ),
                      )),
                  elevation: 8,
                  shadowColor: Colors.grey,
                  color: Colors.black12,
                  margin: EdgeInsets.all(20),
                  shape: CircleBorder(
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Recent News'),
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.greenAccent,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              child: Center(child: Image.asset('images/ubit.png')),
              color: Colors.white,
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text(
                'Courses',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                selectedItem(context, 0);
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'GPA Calculator',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                selectedItem(context, 1);
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Attendence',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                selectedItem(context, 1);
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Polls',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                selectedItem(context, 1);
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Recent News',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                selectedItem(context, 1);
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Gallery',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                selectedItem(context, 1);
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'New Policy',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onTap: () {
                selectedItem(context, 1);
                // Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => course_screen()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => gpa_calculator()));
    }
  }
}
