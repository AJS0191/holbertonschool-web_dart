import 'dart:convert';

Future<String> fetchUser() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => throw 'Cannot locate user',
    );

    Future<void> getUser() async {
      try {
        final String userData = await fetchUser();
        final Map<String, dynamic> user = jsonDecode(userData);
        print(user);
      } catch (e) {
        print('error caught: $e');
      }
    }
