import 'dart:collection';

void main(List<String> args) {
  const notFound = 'NOT_FOUND';
  const defaultString = 'DEFAULT_VALUE';

  final myList = SafeList(
    absentValue: notFound,
    defaultValue: defaultString,
    values: ['Bar', 'Baz'],
  );

  print(myList[0]); // Bar
  print(myList[1]); // Baz
  print(myList[2]); // NOT_FOUND

  myList.length = 4;
  print(myList[3]); // DEFAULT_VALUE

  print(myList); // [Bar, Baz, DEFAULT_VALUE, DEFAULT_VALUE]

  myList.length = 0;
  print(myList.first); // NOT_FOUND
  print(myList.last); // NOT_FOUND

  myList.length = 1;
  print(myList[0]); // DEFAULT_VALUE
}

class SafeList<T> extends ListBase<T> {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList({
    required this.absentValue,
    required this.defaultValue,
    List<T>? values,
  }) : _list = values ?? [];

  @override
  T operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(
        List.filled(
          newLength - _list.length,
          defaultValue,
        ),
      );
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
