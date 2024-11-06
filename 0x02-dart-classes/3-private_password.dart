class Password {
  String _password; // Propriété privée

  // Constructeur avec un paramètre pour initialiser le mot de passe
  Password({required String password}) : _password = password;

  // Vérifie la validité du mot de passe
  bool isValid() {
    // Longueur entre 8 et 16 caractères
    bool isCorrectLength = _password.length >= 8 && _password.length <= 16;
    // Contient au moins une majuscule
    bool hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    // Contient au moins une minuscule
    bool hasLowercase = _password.contains(RegExp(r'[a-z]'));
    // Contient au moins un chiffre
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
