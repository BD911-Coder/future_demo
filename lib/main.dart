void main(List<String> args) {
  print('Before the future');
  try {
    final value = Future<int>.delayed(
      Duration(seconds: 1),
      () => 42,
    );
    throw Exception('An Error!');
    print('Value: $value');
  } catch (error) {
    print(error);
  } finally {
    print('Future is complete');
  }
  print('After the future');
}
