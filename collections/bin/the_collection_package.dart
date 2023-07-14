import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('---------------');
  testCanonicalizedMap();
  print('---------------');
  testCombinedIterableView();
  print('---------------');
  testCombinedListView();
  print('---------------');
  testCombinedMapView();
  print('---------------');
  testMapMerging();
}

void testBoolList() {
  final boolList = BoolList(
    5,
    growable: true,
  );
  print(boolList); // [false, false, false, false, false]

  boolList[3] = true; // the 4. value has been set as true
  if (boolList[3] == true) {
    print('The boolean value at index 3 is true');
  } else {
    print('The boolean value at index 3 is false');
  }
  print(boolList); // [false, false, false, true, false]

  boolList.length *= 2; // the size has been expanded
  // [false, false, false, true, false, false, false, false, false, false]
  print(boolList);
}

void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 30,
    'sex': 'male',
    'address': 'New York',
  };

  final canonMap = CanonicalizedMap.from(
    info,
    (key) {
      return key.split('').first;
    },
  );
  print(canonMap); // {name: John, address: New York, sex: male}
}

void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [40, 50, 60];

  var combined = CombinedIterableView([
    one,
    two,
    three,
  ]);
  print(combined); // (1, 2, 3, 10, 20, 30, 40, 50, 60)
  two.add(40);
  print(combined); // (1, 2, 3, 10, 20, 30, 40, 40, 50, 60)
  print(combined.length); // 10
  print(combined.isEmpty); // false
  print(combined.contains(5)); // false
}

void testCombinedListView() {
  /// CombinedListView is a view of a lists, and is unmodifiable
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norwegianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Pierre'];

  final names = CombinedListView([
    swedishNames,
    norwegianNames,
    frenchNames,
  ]);
  print(names); // [Sven, Karl, Gustav, Sven, Karl, Ole, Sven, Karl, Pierre]

  if (names.contains('Sven')) {
    print('Sven is in the list');
  }

  try {
    names.removeAt(0);
  } catch (e) {
    print(e); // Unsupported operation: Cannot modify an unmodifiable List
  }

  swedishNames.removeAt(0);
  print(names); // [Karl, Gustav, Sven, Karl, Ole, Sven, Karl, Pierre]
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'b': 4, 'c': 5, 'd': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};

  var combinedMap = CombinedMapView([
    map1,
    map2,
    map3,
  ]);
  print(combinedMap); // {a: 1, b: 2, c: 3, d: 6, e: 9}
  print(combinedMap['a']); // 1
  print(combinedMap['b']); // 2
  print(combinedMap['c']); // 3
  print(combinedMap['d']); // 6
  print(combinedMap['e']); // 9
  print(combinedMap['f']); // null

  try {
    combinedMap['a'] = 10;
  } catch (e) {
    print(e); // Unsupported operation: Cannot modify unmodifiable map
  }

  map1['a'] = 10;
  print(combinedMap['a']); // 10

  map3['x'] = 69;
  print(combinedMap); // {a: 10, b: 2, c: 3, d: 6, e: 9, x: 69}
}

void testMapMerging() {
  const info1 = {
    'name': 'John',
    'age': 31,
    'height': 1.8,
  };
  const info2 = {
    'name': 'Jane',
    'age': 29,
    'height': 1.68,
    'weight': 71,
  };

  final merge = mergeMaps(info1, info2);

  /// if there is same keys, the function will consider
  /// the value of the last one (inhere the second one)
  print(merge); // {name: Jane, age: 29, height: 1.68, weight: 71}

  final merge2 = mergeMaps(
    info1,
    info2,
    value: (first, second) => first,
  );

  /// in this case, the first value will be considered
  print(merge2); // {name: John, age: 31, height: 1.8, weight: 71}
}
