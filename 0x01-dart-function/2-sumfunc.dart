int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  return ('''Add $a + $b = ${add(a, b)}
Sub $a - $b = ${sub(a, b)}''');
}
