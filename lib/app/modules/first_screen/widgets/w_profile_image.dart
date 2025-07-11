import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final double size;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;

  const ProfileImageWidget({
    super.key,
    this.size = 116,
    this.backgroundColor = Colors.white38,
    this.iconColor = Colors.white,
    this.iconSize = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      child: Icon(Icons.person_add, color: iconColor, size: iconSize),
    );
  }
}
