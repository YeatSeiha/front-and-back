import 'dart:io';

void main() {
  // Step 1: Read the string from the user
  stdout.write('Enter String: ');
  String input = stdin.readLineSync() ?? '';

  // Step 2: Create a set to store unique characters
  Set<String> uniqueChars = {};

  // Step 3: Use a map to count the occurrences of each character
  Map<String, int> charCount = {};

  for (var char in input.split('')) {
    uniqueChars.add(char);
    if (charCount.containsKey(char)) {
      charCount[char] = charCount[char]! + 1;
    } else {
      charCount[char] = 1;
    }
  }

  // Step 4: Print the results
  print('-------------------------');
  print('Char Count:');
  for (var char in uniqueChars) {
    print('$char: ${charCount[char]}');
  }
}
