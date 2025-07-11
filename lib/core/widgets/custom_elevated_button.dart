import 'package:flutter/material.dart';


class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(title));
  }
}
