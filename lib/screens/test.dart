// import 'package:flutter/material.dart';
// import 'package:getx_app/services/api_service.dart';

// class querydata extends StatefulWidget {
//   const querydata({Key? key}) : super(key: key);

//   @override
//   State<querydata> createState() => _querydataState();
// }

// class _querydataState extends State<querydata> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//             child: FutureBuilder(
//                 future: MongoDatabase.getQueryData(),
//                 builder: (context, AsyncSnapshot snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   } else {
//                     if (snapshot.hasData) {
//                       return Center(
//                         child: Text('data found'),
//                       );
//                     } else {
//                       return Center(
//                         child: Text('data not found'),
//                       );
//                     }
//                   }
//                 })));
//   }
// }
