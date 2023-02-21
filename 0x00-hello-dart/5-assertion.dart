void main(List<String> args) {
  var nb = int.parse(args[0]);
  if (nb < 80) {
    AssertionError('The score must be bigger or equal to 80');
  }
  print('You Passed');
}
