import 'dart:convert';



Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);
main() async {
  print(await loginUser());
}

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> greetUser() async {
  final String userData = await fetchUserData();
  final Map<String, dynamic> user = jsonDecode(userData);
  return '3.14 Battery street\n';
}

Future<String> loginUser() async {
  try {
    final bool credentials = await checkCredentials();
    if (credentials) {
      return greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}
