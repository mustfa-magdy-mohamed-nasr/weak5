import 'package:flutter/material.dart';

class CostomAppBar extends StatelessWidget {
  const CostomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
      alignment: Alignment.topCenter,
      height: 400,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bakgrond.jpeg'),
              fit: BoxFit.fill),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          Text('Menu Detail',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              )),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
