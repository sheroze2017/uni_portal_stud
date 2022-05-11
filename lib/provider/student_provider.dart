import 'package:flutter/material.dart';
import 'package:getx_app/services/api_service.dart';

import '../models/student.dart';

class StudentProvider with ChangeNotifier {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
    notifyListeners();
    // ApiService.callStudent(student);
  }

  void updateStudent(Student student) {}

  void deleteStudent(Student student) {}
}
