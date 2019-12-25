/*
    Map is an unordered data collection of key_value pair elements.
    Each Key in Map should be unique.
    value can be duplicated.
*/

void main() {
  // Using literals
  Map<String, int> codes = {"Cairo": 02, "Alex": 03, "Ismailia": 064};
  codes["Elsharqia"] = 055;
  print(codes);

  // Using the constructor
  Map<String, String> letters = Map();
  letters["A"] = "Ahmed";
  letters["A"] = "Amgad"; // replace the previous one
  letters["B"] = "Basel";
  letters["C"] = "Costa";
  letters["C"] = "Coco"; // replace the previous one
  letters["D"] = "Doaa";

  if (letters.containsKey("C"))
    print(true);
  else
    print(false);

  letters.update("A", (value) => "Ahmed");
  letters["C"] = "Costa";
  letters.update("D", (value) => "Basel");
  letters.remove("C");

  /*for (String key in letters.keys) print(key);

  for (String value in letters.values) print(value);*/

  letters.forEach((key, value) => print("key: $key, value: $value"));
}
