import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({super.key, this.size = 80});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey, // Optional background color
      ),
      clipBehavior: Clip.hardEdge,
      child: ClipRect(
        child: Align(
          alignment: Alignment.center,
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: Image.asset(
            'assets/profile.jpg',
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
