import 'package:flutter/material.dart';

class DarkBox extends StatelessWidget {
  const DarkBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          color: Colors.blue[900], borderRadius: BorderRadius.circular(12)),
      child: const Align(
          alignment: Alignment.bottomCenter,
          child: Icon(
            Icons.laptop_mac,
            size: 100,
            color: Colors.white,
          )),
    );
  }
}
