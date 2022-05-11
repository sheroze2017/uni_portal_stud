import 'dart:convert';
import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import '../models/student.dart';
import 'package:http/http.dart' as http;

var uri = 'http://localhost:3000/student';

class UserApiService {
  Future<List<Student>> getAllUser() async {
    final res = await http.get(Uri.parse('http://localhost:3000/student/list'));

    if (res.statusCode == 200) {
      List listResponse = json.decode(res.body);
      return listResponse.map((e) => Student.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future<Student> fetchUser() async {
    final response =
        await http.get(Uri.parse('http://localhost:3000/student/list'));
    if (response.statusCode == 200) {
      return Student.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
