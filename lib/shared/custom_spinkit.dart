import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomSpinkitLoading extends StatelessWidget {
  final Color color;
  final double size;
  const CustomSpinkitLoading({
    Key? key,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitRotatingCircle(
      color: color,
      size: size,
    );
  }
}
