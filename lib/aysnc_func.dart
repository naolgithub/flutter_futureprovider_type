import 'model.dart';

Future<Model> asynchronousFunctionToGetModel() async {
  //  <--- async function
  await Future.delayed(const Duration(seconds: 3));
  return Model(someValue: 'new data');
}
