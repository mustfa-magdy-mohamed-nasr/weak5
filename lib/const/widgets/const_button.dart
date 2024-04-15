import 'package:flutter/material.dart';

import '../../views/authentication/loginaccountview/login_account_view.dart';

class ButtonConst extends StatelessWidget {
  const ButtonConst({
    required this.text,
    super.key,
    required this.padge,
  });
  final String text;
final void Function() padge;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:padge,
     
      child: Container(
        width: 350,
        height: 60,
        decoration: BoxDecoration(
            color: const Color(0xffF86A2E),
            borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        )),
      ),
    );
  }
}
