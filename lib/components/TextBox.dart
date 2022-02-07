import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final ImageProvider? back;

  const TextBox({
    this.back,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: this.back!,
          // fit: BoxFit.cover,
        ),
      ),
    );
  }
}
