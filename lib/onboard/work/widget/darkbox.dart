import 'package:flutter/material.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Icon(
            Icons.person_pin,
            color: Colors.white,
            size: 34,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.person,
                color: Colors.white,
                size: 34,
              ),
              Icon(
                Icons.group,
                color: Colors.white,
                size: 34,
              ),
              Icon(
                Icons.insert_emoticon,
                color: Colors.white,
                size: 34,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
