import '6-password.dart';

class User {
  int id;
  String name;
  int age;
  double height;
  Password _userPassword; // Propriété privée contenant un objet Password

  // Constructeur avec des paramètres requis, y compris le mot de passe
  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  }) : _userPassword = Password(password: user_password);

  // Getter pour récupérer le mot de passe
  String get user_password => _userPassword.password;

  // Setter pour modifier le mot de passe, value étant déclaré en String value est donc non-nullable
  set user_password(String value) {
    _userPassword.password = value;
  }

  // Méthode pour retourner une représentation de l'objet sous forme de Map (excluant le mot de passe)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
      // Le mot de passe n'est pas inclus dans la représentation JSON pour des raisons de sécurité
    };
  }

  // Méthode statique pour créer une instance de User à partir d'une Map
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? '',
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? '',
    );
  }

  // Redéfinition de la méthode toString pour un affichage personnalisé incluant la validité du mot de passe
  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${_userPassword.isValid()})';
  }
}
