void main(List<String> args) {
  descibePerson(); // Hello null, you are null years old.
  descibePerson(age: 12); // Hello null, you are 12 years old.
  descibePerson(name: 'Alex'); // Hello Alex, you are null years old.
  descibePerson(age: 21, name: 'Vandad'); // Hello Vandad, you are 21 years old.
  descibePerson(name: 'Lily', age: 2); // Hello Lily, you are 2 years old.
}

void descibePerson({
  String? name,
  int? age,
}) {
  print('Hello $name, you are $age years old.');
}
