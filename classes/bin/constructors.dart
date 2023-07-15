void main(List<String> args) {
  const me = Person('Bob', 20);
  print(me.name); // Bob
  print(me.age); // 20

  const foo = Person.foo();
  print(foo.name); // Foo
  print(foo.age); // 10

  const bar = Person.bar(23);
  print(bar.name); // Bar
  print(bar.age); // 23

  const baz = Person.other();
  print(baz.name); // Baz
  print(baz.age); // 40

  const john = Person.other(name: 'John');
  print(john.name); // John
  print(john.age); // 40

  const jane = Person.other(name: 'Jane', age: 38);
  print(jane.name); // Jane
  print(jane.age); // 38

  const wow = Person.other(name: null, age: null);
  print(wow.name); // Baz
  print(wow.age); // 40
}

class Person {
  final String name;
  final int age;

  const Person(
    this.name,
    this.age,
  );

  const Person.foo()
      : name = 'Foo',
        age = 10;

  const Person.bar(
    this.age,
  ) : name = 'Bar';

  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? 'Baz',
        age = age ?? 40;
}
