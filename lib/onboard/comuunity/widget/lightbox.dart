import 'package:flutter/material.dart';

class LightBox extends StatelessWidget {
  const LightBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.fromLTRB(58, 115, 58, 0),
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue[200]),
            child: const Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue[200]),
            child: const Icon(
              Icons.group,
              color: Colors.white,
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue[200]),
            child: const Icon(
              Icons.insert_emoticon,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
