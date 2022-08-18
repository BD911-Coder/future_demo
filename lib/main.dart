void main(List<String> args) {
  print('Before the future');

  final myFuture = Future<int>.delayed(
    Duration(milliseconds: 1000),
    () => 42,
  )
      .then(
        (value) => print('Value : $value'),
      )
      .catchError(
        (onError) => print('Error : $onError'),
      )
      .whenComplete(
        () => print('Future is completed'),
      );
  print('After the future');
}
