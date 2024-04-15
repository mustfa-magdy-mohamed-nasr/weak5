import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../const/widgets/const_button.dart';
import '../../authentication/loginaccountview/login_account_view.dart';
import '../data/model.dart';

class OnbordingPageView extends StatelessWidget {
  const OnbordingPageView({
    required this.data,
    required this.controllel,
    super.key,
  });
  final PageController controllel;
  final DataOnbording data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 30),
          child: Container(
            alignment: Alignment.bottomLeft,
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(data.image), fit: BoxFit.fill)),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                width: 300,
                child: Text(
                  data.titel,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const Spacer(),
              const Text(
                'Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const Spacer(),
              SmoothPageIndicator(
                controller: controllel,
                count: 3,
                effect: const WormEffect(
                  dotColor: Colors.grey,
                  activeDotColor: Color(0xffF86A2E),
                  dotHeight: 6,
                  dotWidth: 6,
                  type: WormType.thinUnderground,
                ),
              ),
              TextButton(
                  onPressed: () {
                    controllel.jumpToPage(2);
                  },
                  child: const Text('Skip')),
               ButtonConst(
                text: 'Next', padge: (){
                   Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginAccountView()));
                },
              ),
              const Spacer(),
              const Spacer(),
              const Text(
                'Already Have an Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xffF86A2E), fontWeight: FontWeight.bold),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
