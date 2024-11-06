import '1-util.dart';
import 'dart:convert'; // Pour utiliser jsonDecode

Future<String> getUserId() async {
  // Récupère la chaîne JSON depuis fetchUserData()
  String userJson = await fetchUserData();

  // Parse la chaîne JSON en Map
  Map<String, dynamic> userMap = jsonDecode(userJson);

  // Retourne la valeur associée à la clé 'id'
  return userMap['id'];
}
