import 'package:flutter/material.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          subtitle: Text(subTitle),
        ),
      ],
    );
  }
}
