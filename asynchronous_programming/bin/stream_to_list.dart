void main(List<String> args) async {
  final allNames = await getNames().toList();
  print(allNames);
}

Stream<String> getNames() async* {
  yield 'John';
  yield 'Jane';
  yield 'Jack';
}
