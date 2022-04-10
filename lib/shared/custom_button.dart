import 'package:flutter/material.dart';
import 'package:liquor_ordering_system/shared/custom_spinkit.dart';

class CustomRaisedButton extends StatelessWidget {
  final double elavation;
  final Color color;
  final double radius;
  final VoidCallback onPressed;
  final bool isLoading;
  final Text text;
  const CustomRaisedButton(
      {Key? key,
      required this.elavation,
      required this.color,
      required this.radius,
      required this.onPressed,
      required this.isLoading,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      // ignore: deprecated_member_use
      child: RaisedButton(
        elevation: elavation,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        onPressed: onPressed,
        child: !isLoading
            ? text
            : const CustomSpinkitLoading(
                color: Colors.white,
                size: 25,
              ),
      ),
    );
  }
}
