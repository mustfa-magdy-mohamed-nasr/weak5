import 'package:flutter/material.dart';
import 'package:weak5/views/authentication/widgets/title_and_text_field.dart';
import 'package:weak5/views/authentication/widgets/top_screen.dart';

import '../../../const/widgets/const_button.dart';
import '../create_account/create_account_view.dart';
import '../widgets/or_sigin.dart';

class LoginAccountView extends StatelessWidget {
  const LoginAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xfffffffff),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            Column(
              children: [
                const TopScreen(
                  title: 'Welcome Back',
                  subTitle:
                      'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                ),
                const TitleAndTextFielde(
                  hint: 'Email or Phone Number',
                  icon: Icons.email_outlined,
                  title: 'Email or Phone Number',
                ),
                const TitleAndTextFielde(
                  hint: 'Password',
                  icon: Icons.lock_outline,
                  title: 'Create your password',
                  suffixIcon: Icons.remove_red_eye_outlined,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password?',
                        style:
                            TextStyle(color: Color.fromARGB(250, 255, 126, 34)),
                      ),
                    )
                  ],
                ),
                ButtonConst(
                  text: 'Sign in',
                  padge: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginAccountView()));
                  },
                ),
                const OrSignUp(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account yet?'),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CreateAccountView()));
                        },
                        child: const Text('Sign Up '))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
