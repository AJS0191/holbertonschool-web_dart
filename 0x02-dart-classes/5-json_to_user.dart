class User {
  String name = '';
  int age = 0;
  double height = 0.0;
  var id;

  User({this.id, required this.name, required this.age, required this.height});

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
      height: json['height']
    );

  }


  String toString() {
    return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }
}
