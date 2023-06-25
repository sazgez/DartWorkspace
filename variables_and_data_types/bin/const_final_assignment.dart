void main(List<String> args) {
  const thisList = [1, 2, 3];
  final thatList = thisList;
  print(thisList);
  print(thatList);

  /// const variables must be initialized with constant value
  // const someList = thatList;
  const someList = thisList;
  print(someList);
}
