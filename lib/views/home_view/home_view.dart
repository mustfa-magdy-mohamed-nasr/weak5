import 'package:flutter/material.dart';
import 'package:weak5/views/home_view/widgets/Const_AppBar.dart';

import 'widgets/item_home.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (contxt, i) {
                return Column(
                  children: [
                    const ConstAppBar(),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image: AssetImage(
                                'assets/images/heiFood.png',
                              ),
                              fit: BoxFit.fill)),
                    ),
                    const ItemHome(),
                    const ItemHome(),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
