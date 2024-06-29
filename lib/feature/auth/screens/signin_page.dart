import 'package:amazon_clone/feature/auth/screens/signup_page.dart';
import 'package:amazon_clone/feature/auth/widgets/customize_button.dart';
import 'package:amazon_clone/feature/auth/widgets/customize_textField.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});
  
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomizeTextField(
                  controller: emailController,
                  hintText: "Enter your Email",
                  icon: const Icon(Icons.email),
                  obscureText: false,
                ),
                const SizedBox(height: 10,),
                CustomizeTextField(
                  controller: passwordController,
                  hintText: "Enter your Password",
                  icon: const Icon(Icons.password),
                  obscureText: true,
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: ()=>{
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpPage()))
                  },
                  child: const Text ('Do you want to sign In?',
                              style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Text color
                ),),
                ),
                CustomizeButton(text: "Sign In", onpressed: (){})
              ]
            ),
          ),
        )
      ));
  }
}