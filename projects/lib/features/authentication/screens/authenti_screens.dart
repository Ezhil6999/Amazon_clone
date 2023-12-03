import 'package:flutter/material.dart';
import 'package:projects/constants/global_variables.dart';

enum Auth{
  signin,
  signup,
}
class AuthScreen extends StatefulWidget {
  static const routeName="/auth-screen";
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth=Auth.signin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      body: SafeArea(
        child:Center(
          child: Column(
          children: [
            const Text('Welcome',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
           ),
            ),
            ListTile(
              title: const Text(
                "Create Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val){
                  setState((){
                    _auth = val!;
                  });
                },
              ),

            ),
            // if(_auth==Auth.signup)
            //   Form(
            //     key: ,
            //     child: )
            ListTile(
              title: const Text(
                "sign-In",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val){
                  setState((){
                    _auth = val!;
                  });
                },
              ),

            )
          ],
        ),
        ) ),
    );
  }
}