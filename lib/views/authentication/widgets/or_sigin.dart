import 'package:flutter/material.dart';
import 'package:weak5/views/authentication/widgets/sign_in_with.dart';

class OrSignUp extends StatelessWidget {
  const OrSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            'Or sign in with',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SignInWith(
          image: 'assets/images/Login_goole.png',
          text: 'Sign In with Google',
        ),
        SignInWith(
          image: 'assets/images/Login_facbook.png',
          text: 'Sign In with Facebook',
        ),
      ],
    );
  }
}
