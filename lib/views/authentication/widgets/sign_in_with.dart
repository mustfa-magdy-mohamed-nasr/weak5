import 'package:flutter/material.dart';

class SignInWith extends StatelessWidget {
  const SignInWith({
    super.key,
    required this.text,
    required this.image,
  });
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5), // لون الظل
          spreadRadius: 0.1, // نطاق الانتشار
          blurRadius: .1, // نطاق الضبابية
          offset: const Offset(0, .0001), // الانحراف الأفقي والرأسي للظل
        ),
      ], color: Colors.grey[100], borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(image), Text(text)],
      ),
    );
  }
}
