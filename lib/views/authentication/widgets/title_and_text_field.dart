import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TitleAndTextFielde extends StatelessWidget {
  const TitleAndTextFielde({super.key, required this.title, required this.hint, required this.icon, this.suffixIcon});
  final String title;
  final String hint;
  final IconData icon;
  final IconData? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children:  [
              Text(
               title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        TextField(
          cursorColor: Colors.black12,
          decoration: InputDecoration(
            suffixIcon:  Icon(suffixIcon),
            prefixIcon:  Icon(
              icon,
              color: Colors.grey,
            ),
            hintText: hint,
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
