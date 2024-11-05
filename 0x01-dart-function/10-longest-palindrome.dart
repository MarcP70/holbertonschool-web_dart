// Helper function to check if a substring is a palindrome
bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  int start = 0;
  int end = s.length - 1;

  while (start < end) {
    if (s[start] != s[end]) {
      return false;
    }
    start++;
    end--;
  }
  return true;
}

// Main function to find the longest palindrome substring
String longestPalindrome(String s) {
  String longest = "";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 3; j <= s.length; j++) {
      // Ensure substrings are at least 3 chars long
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest.isEmpty ? "none" : longest;
}
