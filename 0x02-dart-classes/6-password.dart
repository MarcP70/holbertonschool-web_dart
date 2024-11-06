class Password {
  String _password; // Propriété privée

  // Constructeur avec un paramètre obligatoire pour initialiser le mot de passe
  Password({required String password}) : _password = password;

  // Getter pour récupérer la valeur de `_password`
  String get password => _password;

  // Setter pour modifier la valeur de `_password` avec une vérification nulle
  set password(String value) {
    _password = value;
  }

  // Méthode pour vérifier la validité du mot de passe
  bool isValid() {
    // Vérifie la longueur entre 8 et 16 caractères
    bool isCorrectLength = _password.length >= 8 && _password.length <= 16;
    // Vérifie la présence d'au moins une majuscule
    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    // Vérifie la présence d'au moins une minuscule
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    // Vérifie la présence d'au moins un chiffre
    bool hasDigit = _password.contains(RegExp(r'[0-9]'));

    // Retourne true si toutes les conditions sont remplies
    return isCorrectLength && hasUppercase && hasLowercase && hasDigit;
  }

  // Redéfinition de la méthode toString pour afficher le mot de passe
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
