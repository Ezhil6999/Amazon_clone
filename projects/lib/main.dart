import 'package:flutter/material.dart';
import 'package:projects/constants/global_variables.dart';
import 'package:projects/features/authentication/screens/authenti_screens.dart';
import 'package:projects/router/router.dart';
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
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor
        ),
        appBarTheme: const AppBarTheme(                             // decorating the app bar with theme
          elevation: 0,                                            
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        )
      ),
      onGenerateRoute: (settings)=>generateRoute(settings),
      home: const AuthScreen(),

    );
  }
}