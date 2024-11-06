import '2-util.dart';

Future<void> getUser() async {
  try {
    String userJson = await fetchUser();
    print(userJson);
  }
  catch (e) {
    print("error caught: $e");
  }
}
