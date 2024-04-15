import 'package:flutter/material.dart';

class ConstAppBar extends StatelessWidget {
  const ConstAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundColor: Color(0xff191D31),
          child: Icon(Icons.settings),
        ),
        Column(
          children: [
            const Text(
              'Location',
              style: TextStyle(color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.location_on_outlined),
                Text(
                  'Mansoura',
                  style: TextStyle(
                    color: Color(0xff191D31),
                  ),
                )
              ],
            )
          ],
        ),
        const CircleAvatar(
          backgroundColor: Color(0xff191D31),
          child: Icon(Icons.settings),
        ),
      ],
    );
  }
}
