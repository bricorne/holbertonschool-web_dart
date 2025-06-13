String longestUniqueSubstring(String str) {
  int start = 0;
  int maxLength = 0;
  String longest = "";
  Map<String, int> seen = {};

  for (int end = 0; end < str.length; end++) {
    String char = str[end];

    if (seen.containsKey(char) && seen[char]! >= start) {
      start = seen[char]! + 1;
    }

    seen[char] = end;

    if (end - start + 1 > maxLength) {
      maxLength = end - start + 1;
      longest = str.substring(start, end + 1);
    }
  }

  return longest;
}