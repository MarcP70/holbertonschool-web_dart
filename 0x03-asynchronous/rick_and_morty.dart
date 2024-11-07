// fichier: rick_and_morty.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    // Envoyer une requête GET à l'API de Rick et Morty
    final response =
        await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    // Décoder le JSON de la réponse
    final data = json.decode(response.body);

    // Extraire les noms des personnages et les afficher
    for (var character in data['results']) {
      print(character['name']);
    }

  } catch (err) {
    // Gérer les erreurs en cas d'échec de la requête
    print('error caught: $err');
  }
}
