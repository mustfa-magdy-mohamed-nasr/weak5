import 'package:flutter/material.dart';

import '../menu_detalil/menuView.dart';

class ItemHome extends StatelessWidget {
  const ItemHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MenuView()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.all(10),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black12),
              child: Image.asset('assets/images/silverware-1667988_1280.png')),
          SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 150,
                  child: Text(
                    'Premium vegetable salad',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text('4.4'),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.delivery_dining_rounded,
                      color: Colors.deepOrangeAccent,
                    ),
                    Text('12 Minute')
                  ],
                )
              ],
            ),
          ),
          const Icon(
            Icons.money_off_csred_outlined,
            color: Colors.deepOrangeAccent,
            size: 15,
          ),
          const Text(
            '6.17',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
