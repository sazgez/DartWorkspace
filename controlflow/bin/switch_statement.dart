void main(List<String> args) {
  describe(1);
  describe(2.5);
  describe('Foo');
  describe(true);
  describe({5889: 'Vivi'});
  describe([1, 3, 5]);
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an integer');
      break;
    case double:
      print('This is a double');
      break;
    case String:
      print('This is a string');
      break;
    case bool:
      print('This is a boolean');
      break;
    case const (Map<int, String>):
      print('This is a map');
      break;
    default:
      print('This is something else');
      break;
  }
}
