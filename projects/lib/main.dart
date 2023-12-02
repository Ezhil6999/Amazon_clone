import 'package:flutter/material.dart';
import 'package:projects/constants/global_variables.dart';

void main() {
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor, // will decorate the body without the app bar
        appBarTheme: const AppBarTheme(                             // decorating the app bar with theme
           elevation: 0,                                            
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: const Center(
          child: Text("hi hello") ,
        )
        )

    );
  }
}