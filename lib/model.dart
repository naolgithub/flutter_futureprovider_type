class Model {
  //     <--- MyModel
  Model({required this.someValue});
  String someValue = 'Hello';
  Future<void> doSomething() async {
    await Future.delayed(const Duration(seconds: 2));
    someValue = 'Goodbye';
    //print(someValue);
  }
}
