import 'package:flutter/material.dart';
import 'package:liquor_ordering_system/shared/constants.dart';

class LogoAndSlogan extends StatelessWidget {
  final double height;
  final double width;
  final String subtitle;
  const LogoAndSlogan({
    Key? key,
    required this.height,
    required this.width,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 60),
          height: 100,
          child: Hero(
            tag: 'logo',
            child: Image.asset(
              'assets/images/beer-logo.png',
              height: height,
              width: width,
            ),
          ),
        ),
        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 1,
            ),
            children: [
              TextSpan(text: 'GO', style: TextStyle(color: customColor)),
              TextSpan(
                text: 'BOOZE',
              ),
              TextSpan(
                text: '\nDrink and get wasted anywhere',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 0),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 40,
          ),
          child: Column(
            children: [
              Text(
                subtitle,
                style: const TextStyle(
                    fontSize: 17,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
