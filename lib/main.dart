
  Future<void> main() async {
    print('Before the future');
    final value = await Future<int>.delayed(
      Duration(milliseconds: 1000),
      () => 42,
    );
    print('Value : $value');
    print('After the future');
  }

