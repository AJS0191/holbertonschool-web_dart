int add(int a, int b){
  return a + b;
}
int sub(int a, int b) {
  return a - b;
}
String showFunc(int a, int b) {
  return """
$a + $b = ${add(a, b)}
$a - $b = ${sub(a, b)}
""";
}
