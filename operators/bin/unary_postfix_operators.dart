void main(List<String> args) {
  var age = 40;
  print(age--); // 40 (age will be mutated after printing)
  print(age); // 39
  print(age++); // 39 (age will be mutated after printing)
  print(age); // 40
}
