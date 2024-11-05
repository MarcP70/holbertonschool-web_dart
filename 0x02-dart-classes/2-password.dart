class Password {
  String password = "";

  bool isValid() {
    // Vérifie si le mot de passe contient entre 8 et 16 caractères
    bool isCorrectLength = password.length >= 8 && password.length <= 16;
    // Vérifie si le mot de passe contient au moins une majuscule
    bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
    // Vérifie si le mot de passe contient au moins une minuscule
    bool hasLowercase = password.contains(RegExp(r'[a-z]'));
    // Vérifie si le mot de passe contient au moins un chiffre
    bool hasDigit = password.contains(RegExp(r'[0-9]'));

    // Retourne true si toutes les conditions sont remplies
    return isCorrectLength && hasUppercase && hasLowercase && hasDigit;
  }

  String toString() {
    return 'Your Password is: $password';
  }
}
