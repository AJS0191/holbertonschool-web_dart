import '0-main.dart';

Future<void> usersCount() async {
  final int userCount = await fetchUsersCount();
  print('$userCount');
}
