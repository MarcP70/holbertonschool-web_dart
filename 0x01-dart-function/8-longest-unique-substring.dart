String longestUniqueSubstring(String str) {
  int maxLength = 0;
  int start = 0;
  int maxStart = 0;
  Map<String, int> seenChars = {};

  for (int end = 0; end < str.length; end++) {
    String currentChar = str[end];

    // If character is repeated in the current window, adjust the start position
    if (seenChars.containsKey(currentChar) &&
        seenChars[currentChar]! >= start) {
      start = seenChars[currentChar]! + 1;
    }

    // Update the last seen position of the character
    seenChars[currentChar] = end;

    // Check if current substring is the longest so far
    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      maxStart = start;
    }
  }

  // Return the longest substring found
  return str.substring(maxStart, maxStart + maxLength);
}
