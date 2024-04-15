import 'package:flutter/material.dart';
import 'package:weak5/views/Onbording/widgets/onbording_pageView.dart';

import 'data/model.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  final controllel = PageController();
  List<DataOnbording> dataPa = [
    DataOnbording(
        image: 'assets/images/1.png',
        titel: 'The Experience Of Buying Food Quickly'),
    DataOnbording(
        image: 'assets/images/2.png',
        titel: 'Foodie\'s Courier Send With Love'),
    DataOnbording(
        image: 'assets/images/3.png', titel: 'Find And Get Your Best Food'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: PageView.builder(
              controller: controllel,
              itemCount: dataPa.length,
              itemBuilder: (container, i) {
                return OnbordingPageView(
                    data: dataPa[i], controllel: controllel);
              })),
    );
  }
}

