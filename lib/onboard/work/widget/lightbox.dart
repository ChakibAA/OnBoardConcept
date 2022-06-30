import 'package:flutter/material.dart';

class LightBox extends StatelessWidget {
  const LightBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[400],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue[200]),
            child: const Icon(
              Icons.event_seat,
              color: Colors.white,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue[200]),
            child: const Icon(
              Icons.business_center,
              color: Colors.white,
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue[200]),
            child: const Icon(
              Icons.assessment,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
