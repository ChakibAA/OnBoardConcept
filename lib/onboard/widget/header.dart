import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const FlutterLogo(
          size: 40,
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.white12)),
          child: const Text(
            "Skip",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        )
      ],
    );
  }
}
