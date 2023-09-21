// import 'package:flutter/material.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color.fromARGB(255, 181, 156, 62),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onborading_screen/Component/my_button.dart';
import 'package:onborading_screen/Component/my_iconbutton.dart';
import 'package:onborading_screen/Component/my_textbutton.dart';
import 'package:onborading_screen/Component/my_textfield.dart';

// class  extends StatelessWidget {
//    signInscreen({super.key});

class SignUpscreen extends StatelessWidget {
  SignUpscreen({super.key});

  final emailContoller = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final comfirmController = TextEditingController();

  void signInUser() async {
    if (emailContoller.text != "" && passwordController.text != "" &&
        nameController.text != "" && comfirmController.text != "" &&
        passwordController.text == comfirmController.text
    ) {
      print('IT is ok');
    } else {
      print('Please input your email and password.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Sign Up?",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please sign up with your email and password.",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.displaySmall,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: emailContoller,
                hintText: 'Enter your email',
                obscureText: false,
                labelText: 'Email',
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: nameController,
                hintText: 'Enter your name',
                obscureText: false,
                labelText: 'name',
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: passwordController,
                hintText: 'Enter your password',
                obscureText: true,
                labelText: 'Password',
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextField(
                controller: comfirmController,
                hintText: 'Enter your password',
                obscureText: true,
                labelText: 'Comfrim',
              ),
              const SizedBox(
                height: 25,
              ),
              // const MyTextButton(labelText: 'Forget password?', pageRoute: 'forgot',),
              const SizedBox(
                height: 25,
              ),
              MyButton(onTap: signInUser, hinText: 'Sign Up'),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or Contiune with',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey.shade700,
                  ))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(imagePath: 'asset/image/google.png'),
                  SizedBox(
                    width: 10,
                  ),
                  MyIconButton(imagePath: 'asset/image/apple.png'),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already?',
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                    ),
                    const MyTextButton(
                      labelText: 'Sign in',
                      pageRoute: 'Sign in',
                    ),
                  ],
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
