import 'package:flutter/material.dart';

class CustomSignInSignUpOption extends StatelessWidget {
  final String icon;
  final VoidCallback action;
  const CustomSignInSignUpOption({
    Key? key,
    required this.icon,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        height: 50,
        width: 60,
        padding: icon != 'facebook'
            ? const EdgeInsets.all(15)
            : const EdgeInsets.all(13),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(0, 3), // Shadow position
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Image.asset(
          'assets/images/$icon.png',
        ),
      ),
    );
  }
}
