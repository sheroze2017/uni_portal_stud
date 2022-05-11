class UserModel {
  List<String>? gpa;
  UserModel({this.gpa});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['gpa'] = gpa;

    return data;
  }
}
