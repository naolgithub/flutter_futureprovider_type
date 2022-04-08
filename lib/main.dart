import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'aysnc_func.dart';
import 'model.dart';

void main() {
  runApp(const FutureProviderRootApp());
}

class FutureProviderRootApp extends StatelessWidget {
  const FutureProviderRootApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureProvider<Model>(
      initialData: Model(someValue: 'default value'),
      create: (context) => asynchronousFunctionToGetModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Future Provider Type',
        theme: ThemeData(
          colorScheme: const ColorScheme.light(
            primary: Color(0xFF00A6ED),
            onPrimary: Color(0xFF00A6ED),
            surface: Color(0xFFF5F5F5),
            onSurface: Color(0xFFF5F5F5),
            background: Color(0xFFF5F5F5),
            onBackground: Color(0xFFF5F5F5),
            error: Color(0xFFB00020),
            onError: Color(0xFFB00020),
            brightness: Brightness.light,
          ),
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Future Provider Type',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.cyanAccent,
                letterSpacing: 2,
                wordSpacing: 3,
                height: 20,
              ),
            ),
          ),
          body: Center(
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  width: 100,
                  height: 100,
                  child: Consumer<Model>(
                    // <---Consumer
                    builder: (context, model, child) {
                      return ElevatedButton(
                        child: const Text('Do Something'),
                        onPressed: () {
                          model.doSomething();
                        },
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  width: 100,
                  height: 100,
                  child: Consumer<Model>(
                    // <---Consumer
                    builder: (context, model, child) {
                      return Text(model.someValue);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
