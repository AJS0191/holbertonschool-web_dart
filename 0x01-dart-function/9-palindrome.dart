bool isPalindrome(String s) {
  return s == s.split('').reversed.join('') && s.length > 2;
}
