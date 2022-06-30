import 'package:flutter/material.dart';

class Titlebox extends StatelessWidget {
  const Titlebox({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "Ipsum sint magna aliquip ea voluptate esse esse enim aute ullamco.",
          style: TextStyle(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
