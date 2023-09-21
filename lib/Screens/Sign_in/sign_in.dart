import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onborading_screen/Component/my_button.dart';
import 'package:onborading_screen/Component/my_iconbutton.dart';
import 'package:onborading_screen/Component/my_textbutton.dart';
import 'package:onborading_screen/Component/my_textfield.dart';

// class  extends StatelessWidget {
//    signInscreen({super.key});

class SignInscreen extends StatelessWidget {
  SignInscreen({super.key});

  final emailContoller = TextEditingController();
  final passwordController = TextEditingController();


  void signInUser() async {
    if (emailContoller.text != "" && passwordController.text != "") {
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
                "Weclome to Sign In Page",
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
                "Please sign in with your email and password.",
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
                controller: passwordController,
                hintText: 'Enter your password',
                obscureText: true,
                labelText: 'Password',
              ),
              const SizedBox(
                height: 25,
              ),
              const MyTextButton(labelText: 'Forget password?', pageRoute: 'forgot',),
              const SizedBox(
                height: 25,
              ),
              MyButton(onTap: signInUser, hinText: 'Sign In'),
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
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
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
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyIconButton(imagePath: 'asset/image/google.png'),
                  SizedBox(width: 10,),
                  MyIconButton(imagePath: 'asset/image/apple.png'),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.displaySmall,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                    const MyTextButton(labelText: 'Register Now',pageRoute:'Register',),
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
