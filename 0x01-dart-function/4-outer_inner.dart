void outer(String name, String id) {
  String inner() {
    // Split the name into first and last names
    List<String> names = name.split(' ');
    String lastNameInitial = names[1][0]; // First letter of the last name
    String formattedName =
        "$lastNameInitial.${names[0]}";

    return "Hello Agent $formattedName your id is $id";
  }

  print(inner());
}
