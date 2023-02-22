import '6-password.dart';

class User extends Password{
  String name = '';
  int age = 0;
  double height = 0.0;
  var id;
  String user_password;

  User({this.id, required this.name, required this.age, required this.height, required this.user_password}) : super(password: user_password.toString());

  //bool passValid = user_password.isValid();
  Map toJson() {
    return {
      'id': id, 'name': name, 'age': age, 'height': height
    };
  }

  static User fromJson(Map json) {
    return User(
      id: json['id'],
      name: json['name'],
      age: json['age'],
      height: json['height'],
      user_password: json['user_password']
    );

  }


  String toString() {
    
    return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }
}
