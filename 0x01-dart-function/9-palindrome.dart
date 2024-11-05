bool isPalindrome(String s) {
  // Si la longueur est inférieure à 3, retourner false
  if (s.length < 3) {
    return false;
  }

  int start = 0;
  int end = s.length - 1;

  while (start < end) {
    if (s[start] == s[end]) {
      start++;
      end--;
    } else {
      return false;
    }
  }
  return true;
}
