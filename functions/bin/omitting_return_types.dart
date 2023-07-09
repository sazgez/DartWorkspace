/// uncommenting following codes in the analysis_options.yaml, if not:
/// linter:
///   rules:
/// and adding this code,
/// - always_declare_return_types
/// will enforce you to specifying the return type of a function
/// while writing the code
void main(List<String> args) {
  printHello();
}

/// function without return type
printHello() {
  print('Hello');
}
