void main(List<String> args) {
  print(AnimalType.cat.nameContainsUpperCaseLetters); // false
  print(AnimalType.dog.nameContainsUpperCaseLetters); // false
  print(AnimalType.goldFish.nameContainsUpperCaseLetters); // true
}

enum AnimalType {
  cat,
  dog,
  goldFish,
}

extension on Enum {
  bool get nameContainsUpperCaseLetters => name.contains(
        RegExp(
          r'[A-Z]',
        ),
      );
}
