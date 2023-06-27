void main(List<String> args) {
  /// invalid: the final variable has to be assigned before usage
  // final String? name;
  // print(name);

  final String? firstName = null;

  /// forcing the nullable variable to read the value
  /// if the variable is null, the program will crash
  try {
    print(firstName!); // exception will occur
  } catch (error) {
    print(error);
  }
}
