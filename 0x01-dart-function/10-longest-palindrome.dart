String longestPalindrome(String s){
  String longest = '';
  String current = '';

  for (var i = 0; i < s.length; i++){
    for (var j = i; j < s.length; j++){
      current = s.substring(i, j + 1);
      if (current.length > longest.length && isPalindrome(current)) {
        longest = current;
      }
    }
  }
  if (longest == '') {
    return 'none';
  }
  return longest;
}


bool isPalindrome(String s) {
  return s == s.split('').reversed.join('') && s.length > 2;
}
