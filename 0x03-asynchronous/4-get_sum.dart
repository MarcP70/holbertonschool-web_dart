import 'dart:convert';
import '4-util.dart';

Future<dynamic> calculateTotal() async {
  try {
    // Récupération des données de l'utilisateur
    String userData = await fetchUserData();
    String userId = jsonDecode(userData)["id"];

    // Récupération des commandes de l'utilisateur
    String userOrdersData = await fetchUserOrders(userId);
    List<dynamic> userProducts = jsonDecode(userOrdersData);

    // Initialisation du total
    double total = 0;

    // Boucle sur chaque produit dans les commandes et ajoute son prix au total
    for (final product in userProducts) {
      String productPrice = await fetchProductPrice(product);
      total += jsonDecode(productPrice);
    }

    return total;
  } catch (err) {
    // Gestion des erreurs, retourne -1 en cas de problème
    print("error caught: $err");
    return -1;
  }
}
