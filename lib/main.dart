import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:getx_app/provider/student_provider.dart';
import 'package:getx_app/screens/admin_screen.dart';
import 'package:getx_app/screens/marks_screen.dart';
import 'package:getx_app/screens/test.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: 'AIzaSyDMTyVNDMWHTh7nxeymHcrvK7rfZet-KlI',
          appId: '1:325961998568:android:09875b91badb2763a7e95d',
          messagingSenderId:
              '325961998568-2eogk642abn5jerroebg1130cti6senu.apps.googleusercontent.com',
          projectId: 'ubitportal-1'));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => StudentProvider(),
          ),
        ],
        child: const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          // ),
          home: const MyApp1(),
        ));
  }
}
