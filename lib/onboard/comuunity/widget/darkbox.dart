import 'package:flutter/material.dart';

import '../../widget/line.dart';

class DarkBox extends StatelessWidget {
  const DarkBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: Colors.blue[900], borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.brush,
                color: Colors.white,
              ),
              for (int i = 0; i < 4; i++) const Line(),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
              for (int i = 0; i < 6; i++) const Line(),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.straighten,
                color: Colors.white,
              ),
              for (int i = 0; i < 4; i++) const Line(),
            ],
          ),
        ],
      ),
    );
  }
}
