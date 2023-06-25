/// in the analysis_options.yaml file, uncommenting the
/// linter:
///   rules:
/// and adding the
/// - always_specify_types
/// if there is not, will force you while coding to specifying a type,
/// if you forget to indicating it.

void main(List<String> args) {
  const String yourName = 'Foo Bar';
  final hisName = yourName;
  print(yourName);
  print(hisName);
}
