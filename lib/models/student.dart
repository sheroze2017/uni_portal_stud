// import 'dart:convert';
// import 'dart:ffi';

// class Student {
//   String? name;
//   String? seatNo;
//   String? faculty;
//   Array? marks;
//   Student({
//     this.name,
//     this.seatNo,
//     this.faculty,
//     this.marks,
//   });

//   factory Student.fromMap(Map<String, dynamic> map) {
//     return Student(
//       name: map['name'],
//       seatNo: map['seatNo'],
//       faculty: map['faculty'],
//       marks:

//     );
//   }

//   // Map<String, dynamic> toMap() {
//   //   return {
//   //     'name': name,
//   //     'seatNo': seatNo,
//   //     'faculty': faculty,
//   //     'marks': marks?.toMap(),
//   //   };
//   // }

//   factory Student.fromMap(Map<String, dynamic> map) {
//     return Student(
//       name: map['name'],
//       seatNo: map['seatNo'],
//       faculty: map['faculty'],
//       marks: map['marks'] != null ? Array.fromMap(map['marks']) : null,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Student.fromJson(String source) =>
//       Student.fromMap(json.decode(source));

//   Student copyWith({
//     String? name,
//     String? seatNo,
//     String? faculty,
//     Array? marks,
//   }) {
//     return Student(
//       name: name ?? this.name,
//       seatNo: seatNo ?? this.seatNo,
//       faculty: faculty ?? this.faculty,
//       marks: marks ?? this.marks,
//     );
//   }

//   @override
//   String toString() {
//     return 'Student(name: $name, seatNo: $seatNo, faculty: $faculty, marks: $marks)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is Student &&
//         other.name == name &&
//         other.seatNo == seatNo &&
//         other.faculty == faculty &&
//         other.marks == marks;
//   }

//   @override
//   int get hashCode {
//     return name.hashCode ^ seatNo.hashCode ^ faculty.hashCode ^ marks.hashCode;
//   }
// }

// To parse this JSON data, do
//
//     final empty = emptyFromJson(jsonString);

import 'dart:convert';

// Student emptyFromJson(String str) => Student.fromJson(json.decode(str));

// String emptyToJson(Student data) => json.encode(data.toJson());

class Student {
  final String name;
  final String seatNo;
  final String faculty;
  final List<dynamic> marks;

  Student({
    required this.name,
    required this.seatNo,
    required this.faculty,
    required this.marks,
  });

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        name: json['Name'],
        seatNo: json['seatNo'],
        faculty: json['faculty'],
        marks: List<dynamic>.from(json['marks'].map((x) => x)),
      );

  // Map<String, dynamic> toJson() => {
  //       "Name": name,
  //       "seatNo": seatNo,
  //       "faculty": faculty,
  //       "marks": List<dynamic>.from(marks.map((x) => x)),
  //     };
}
