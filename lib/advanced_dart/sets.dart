/*
    Set is an unordered data collection of unique elements.
    No indexes in Sets.
 */

void main() {
  // Using a list
  Set<String> countries = Set.from(["Egypt", "Morocco", "America", "Tunisia"]);
  countries.add("Japan");

  // Using the constructor
  Set<int> numbers = Set();
  numbers.addAll([1, 2, 3]);
  numbers.add(3); // Ignored because it's a duplicated element

  print(countries);
  print(numbers);

  countries.forEach((element) => print(element));
//  countries.clear();

  for (int element in numbers) print(element);

  if(numbers.isNotEmpty)
    print("\"Numbers\" set isn't empty");

  countries.remove("Egypt");
  if (numbers.contains(5))
    print(true);
  else
    print(false);

  // Not allowed for Sets
//  for(int i = 0; i < numbers.length; i++) print(numbers[i]);
}
