import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Récupération des données de l'utilisateur
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = json.decode(userData);
    String userId = userMap['id'];

    // Récupération des commandes de l'utilisateur
    String userOrdersData = await fetchUserOrders(userId);
    List<dynamic> userOrders = json.decode(userOrdersData);

    // Initialisation du total
    double total = 0.0;

    // Boucle sur chaque produit dans les commandes et ajoute son prix au total
    for (var product in userOrders) {
      String productPriceData = await fetchProductPrice(product);
      double productPrice = json.decode(productPriceData).toDouble();
      total += productPrice;
    }

    return total;
  } catch (err) {
    // Gestion des erreurs, retourne -1 en cas de problème
    print("error caught in calculateTotal : $err");
    return -1.0;
  }
}

