import 'dart:convert'; // Pour utiliser jsonDecode
import '3-util.dart';

Future<String> greetUser() async {
  try {
    // Récupère la chaîne JSON depuis fetchUserData()
    String userJson = await fetchUserData();

    // Parse la chaîne JSON en Map
    Map<String, dynamic> userMap = jsonDecode(userJson);

    // Retourne la valeur associée à la clé 'username'
    return 'Hello ${userMap['username']}';
  } catch (e) {
    return ('error caught: $e');
  }
}

Future<String> loginUser() async {
  bool valideUserCredential = await checkCredentials();
  if (valideUserCredential) {
    print('There is a user: true');
    return(greetUser());
  } else {
    print('There is a user: false');
    return ('Wrong credentials');
  }
}
