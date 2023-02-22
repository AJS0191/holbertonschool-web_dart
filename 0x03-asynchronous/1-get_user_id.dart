import 'dart:convert';
import '1-main.dart';

Future<String> getUserId() async {
    final String userData = await fetchUserData();
    final Map<String, dynamic> user = jsonDecode(userData);
    return user['id'];
}
