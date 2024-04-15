import 'package:flutter/material.dart';
import 'package:weak5/views/authentication/widgets/title_and_text_field.dart';
import 'package:weak5/views/authentication/widgets/top_screen.dart';

import '../../../const/widgets/const_button.dart';
import '../../home_view/home_view.dart';
import '../widgets/or_sigin.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                const TopScreen(
                    title: 'Create Account',
                    subTitle:
                        'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!'),
                const TitleAndTextFielde(
                    title: 'Username',
                    hint: 'Create your username',
                    icon: Icons.person_outline_outlined),
                const TitleAndTextFielde(
                    hint: 'Enter your email or phone number',
                    title: 'Email or Phone Number',
                    icon: Icons.email_outlined),
                const TitleAndTextFielde(
                  hint: 'Create your password',
                  title: 'Password',
                  icon: Icons.lock_outline,
                  suffixIcon: Icons.remove_red_eye_outlined,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ButtonConst(
                    text: 'Create Account',
                    padge: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeView()));
                    },
                  ),
                ),
                const OrSignUp(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
