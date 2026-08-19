

void main() {
  String text = "Dart Programming";
  Map<String, int> frequency = {};
  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    if (frequency.containsKey(char)) {
      frequency[char] = frequency[char]! + 1;
    } else {
      frequency[char] = 1;
    }
  }
  print("Character Frequency:");
  frequency.forEach((key, value) {
    print("$key : $value");
  });
}
