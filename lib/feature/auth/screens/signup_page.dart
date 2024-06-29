import 'package:amazon_clone/feature/auth/screens/signin_page.dart';
import 'package:amazon_clone/feature/auth/widgets/customize_button.dart';
import 'package:amazon_clone/feature/auth/widgets/customize_textField.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

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
                      controller : nameController,
                      hintText: "Enter your Name", 
                      icon: const Icon(Icons.person),
                      obscureText: false,),
                const SizedBox(height: 10,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInPage()))
                  },
                  child: const Text ('Do you want to sign In?',
                              style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue, // Text color
                ),),
                ),
                CustomizeButton(text: "Sign Up", onpressed: (){})
              ]
            ),
          ),
        )
      ));
  }
}