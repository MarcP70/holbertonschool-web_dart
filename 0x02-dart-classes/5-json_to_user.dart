class User {
  int id;
  String name;
  int age;
  double height;

  // Constructeur
  User({required this.id, required this.name, required this.age, required this.height});

  // Méthode pour retourner une représentation de l'objet sous forme de Map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Méthode statique pour créer une instance de User à partir d'une Map
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  // Redéfinition de la méthode toString pour un affichage personnalisé
  @override
  String toString() {
    return 'User(id : $id ,name: $name,  age: $age, height: $height)';
  }
}
