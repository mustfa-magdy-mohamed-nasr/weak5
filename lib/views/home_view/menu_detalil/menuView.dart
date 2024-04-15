import 'package:flutter/material.dart';

import 'widgets/costom_app_bar.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CostomAppBar(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        'Noodles',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                          width: 200,
                          child: Text(
                            'Fried grill noodles with egg special',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        height: 38,
                        width: 120,
                        child: Card(
                          color: Colors.grey[120],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(
                                Icons.remove_circle,
                                size: 30,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Icon(
                                Icons.add_circle_outlined,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Rating',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Calorles',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'Time',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber[600],
                      ),
                      const Text(
                        '4.8',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.amber[600],
                      ),
                      const Text(
                        '124 Kcal',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.alarm_sharp,
                        color: Colors.red[600],
                      ),
                      const Text(
                        '15min',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Discription',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const Text(
                    '''Indulge in a burst of Mediterranean flavors with our exquisite Stuffed Bell Peppers! Vibrant, plump bell peppers are generously filled with a tantalizing blend of nutty quinoa, sautéed spinach, juicy cherry tomatoes, and tangy kalamata olives. Every bite is a symphony of tastes and textures, complemented by the creamy richness of crumbled feta cheese and the aromatic touch of oregano.

Perfectly baked to tender perfection, our Stuffed Bell Peppers offer a wholesome dining experience that delights the senses and satisfies the soul. Whether you're a devoted vegetarian or simply craving a veggie-forward delight, this dish promises to tantalize your taste buds and transport you to the sun-kissed shores of the Mediterranean.

Join us and savor the essence of Mediterranean cuisine with our unforgettable Stuffed Bell Peppers – a culinary masterpiece that embodies freshness, flavor, and culinary craftsmanship.''',
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.money_off_sharp,
                            color: Color(0xffE60E0E),
                            size: 20,
                          ),
                          Text(
                            '35.25',
                            style: TextStyle(fontSize: 30),
                          ),
                        ],
                      ),
                      Container(
                        width: 180,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffE60E0E),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.card_travel_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Add ti Card',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
