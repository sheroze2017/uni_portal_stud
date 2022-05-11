import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:getx_app/models/student.dart';
import 'package:http/http.dart' as http;

//10.0.2.2

Future<Student> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('http://localhost:3000/student/list/EB20102122'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Student.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

// class Album {
//   final int userId;
//   final int id;
//   final String title;

//   const Album({
//     required this.userId,
//     required this.id,
//     required this.title,
//   });

//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  _MyApp1State createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  late Future<Student> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Student>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data!.faculty[1]);
                return Text(snapshot.data!.seatNo);
              } else if (snapshot.hasError) {
                print(snapshot.error);
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}


// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:getx_app/services/api_service.dart';

// import '../models/student.dart';

// class mark_screen extends StatefulWidget {
//   const mark_screen({Key? key}) : super(key: key);

//   @override
//   State<mark_screen> createState() => _mark_screenState();
// }

// class _mark_screenState extends State<mark_screen> {
//   // Student studentService = Student();
//   UserApiService apiService = UserApiService();
//   late List<Student> studentList;
//   late Future<Student> futureUser;
//   @override
//   void initState() {
//     // apiService.getAllUser();
//     super.initState();
//     futureUser = apiService.fetchUser();
//   }

//   Widget build(BuildContext context) {
//     var scrsize = MediaQuery.of(context).size;
//     var height = scrsize.height;
//     var width = scrsize.width;
//     var first = [
//       'ICS-1',
//       'Maths-1',
//       'Stat & Data Analysis',
//       'Physics',
//       'English',
//       'ISL',
//       'Pak Studies'
//     ];
//     var second = [
//       'ICS-2',
//       'Maths-2',
//       'Probability & Stat Method',
//       'Physics-2',
//       'English',
//       'Urdu/Humanities',
//       'Pak Studies'
//     ];
//     var third = [
//       'DCDF',
//       'ALP',
//       'Maths-3',
//       'Physics-2',
//       'Semi-Conductor & Devices',
//       'Discrete Maths',
//       'OOP'
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ubit data'),
//       ),
//       body: Center(
//         child: FutureBuilder(
//           future: futureUser,
//           builder: (context, snapshot) {
//             // studentList = snapshot.data ?? [];
//             if (snapshot.hasData) {
//               return Center(
//                 child: Text('found'),
//               );
//             } else if (snapshot.hasError) {
//               return Center(
//                 child: Text("not found"),
//               );
//             } else {
//               return CircularProgressIndicator();
//             }
//           },
//         ),
//       ),
//     );

    // Scaffold(
    //     appBar: AppBar(
    //       title: Text(
    //         'Course Marks',
    //         style: TextStyle(fontSize: 18),
    //       ),
    //       centerTitle: true,
    //       backgroundColor: Colors.greenAccent,
    //     ),
    //     body: SingleChildScrollView(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Container(
    //             height: height / 8.5,
    //             width: width,
    //             decoration: BoxDecoration(
    //                 gradient: LinearGradient(
    //               colors: [
    //                 Colors.green,
    //                 Colors.greenAccent,
    //               ],
    //             )),
    //             child: Padding(
    //               padding: const EdgeInsets.all(10.0),
    //               child: Text(
    //                 'Sheroze Rehman' + '\n' + 'EB20102122 ' + '  BSCS',
    //                 style: TextStyle(
    //                   fontSize: 10,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.white,
    //                 ),
    //               ),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.all(8.0),
    //             child: Container(
    //               color: Colors.greenAccent,
    //               height: height / 1.5,
    //               width: width,
    //               child: Column(children: [
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: (Container(
    //                     height: height / 16,
    //                     width: width,
    //                     color: Colors.white,
    //                     child: Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                       children: [
    //                         Text('subject 1'),
    //                         Text('Crd Hr'),
    //                         Text('85')
    //                       ],
    //                     ),
    //                   )),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: (Container(
    //                     height: height / 16,
    //                     width: width,
    //                     color: Colors.white,
    //                     child: Text('subject 1'),
    //                   )),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: (Container(
    //                     height: height / 16,
    //                     width: width,
    //                     color: Colors.white,
    //                     child: Text('subject 1'),
    //                   )),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: (Container(
    //                     height: height / 16,
    //                     width: width,
    //                     color: Colors.white,
    //                     child: Text('subject 1'),
    //                   )),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: (Container(
    //                     height: height / 16,
    //                     width: width,
    //                     color: Colors.white,
    //                     child: Text('subject 1'),
    //                   )),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.all(8.0),
    //                   child: (Container(
    //                     height: height / 16,
    //                     width: width,
    //                     color: Colors.white,
    //                     child: Text('subject 1'),
    //                   )),
    //                 ),
    //               ]),
    //             ),
    //           )
    //         ],
    //       ),
    //     ));
  //}
//}











  // appBar: AppBar(title: Text('django')),
  //     body: FutureBuilder<List>(
  //       // future: studentService.getAllStudent(),
  //       builder: (BuildContext context, snapshot) {
  //         if (snapshot.hasData) {
  //           print(snapshot);
  //           return ListView.builder(
  //               itemCount: snapshot.data?.length,
  //               itemBuilder: (context, i) {
  //                 return Card(
  //                   child: ListTile(
  //                     title: Text(
  //                       snapshot.data![i]['stuname'],
  //                       style: TextStyle(fontSize: 30),
  //                     ),
  //                     subtitle: Text(
  //                       'Email',
  //                       style: TextStyle(fontSize: 30),
  //                     ),
  //                   ),
  //                 );
  //               });
  //         } else {
  //           print(snapshot);
  //           return const Center(
  //             child: Text('No data found'),
  //           );
  //         }
  //       },
  //     ),












  
                          // GridView.builder(
                          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //     crossAxisCount: 1,
                          //   ),
                          //   itemCount: 6,
                          //   itemBuilder: (context, index) {
                          //     return Container(
                          //       child: Text('d'),
                          //     );
                          //   })