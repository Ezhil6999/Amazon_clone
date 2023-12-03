import 'package:flutter/material.dart';
import 'package:projects/features/authentication/screens/authenti_screens.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings){
  switch (routeSettings.name){
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AuthScreen(),
        settings: routeSettings
      );
    default:
      return MaterialPageRoute(
        builder: (_)=>const Scaffold(
          body: Center(child: Text('Error : 404')),
        ),
        settings:routeSettings,
       );
  }
}