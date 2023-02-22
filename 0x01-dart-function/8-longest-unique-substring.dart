String longestUniqueSubstring(String str) {
  String longest = '';
  String current = '';

  for (var i = 0; i < str.length; i++){
    for (var j = i; j < str.length; j++){
      current = str.substring(i, i + 1);
      if (current.length > longest.length && isUnique(current)) {
        longest = current;
      }
    }
  }
  return longest;
}

bool isUnique(String str) {
  return str == str.split('').toSet().join('');
}
