void main(List<String> args) {
  final johnDoe = Person(name: 'John Doe');
  final janeDoe = Person(name: 'Jane Doe');
  final doeFamily = WrongImplementationOfFamily(
    members: [
      johnDoe,
      janeDoe,
    ],
  );
  print(doeFamily);
  print(doeFamily.membersCount);

  /// output:
  /// Getting members count
  /// Instance of 'WrongImplementationOfFamily'
  /// 2

  final johnSmith = Person(name: 'John Smith');
  final janeSmith = Person(name: 'Jane Smith');
  final smithFamily = RightImplementationOfFamily(
    members: [
      johnSmith,
      janeSmith,
    ],
  );
  print(smithFamily);
  print(smithFamily.membersCount);

  /// output:
  /// Instance of 'RightImplementationOfFamily'
  /// Getting members count
  /// 2
}

class Person {
  final String name;

  Person({required this.name});
}

class RightImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({required this.members});

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}

class WrongImplementationOfFamily {
  final Iterable<Person> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    membersCount = getMembersCount();
  }

  int getMembersCount() {
    print('Getting members count');
    return members.length;
  }
}
