import 'package:flutter/material.dart';

import 'widget/darkbox.dart';
import 'widget/lightbox.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> with TickerProviderStateMixin {
  late AnimationController darkBoxController;
  late Animation<Offset> darkBoxOffset;
  late AnimationController lightBoxController;
  late Animation<Offset> lightBoxOffset;

  @override
  void initState() {
    super.initState();

    darkBoxController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    darkBoxOffset = Tween<Offset>(
      begin: const Offset(1.5, 0),
      end: Offset.zero,
    ).animate(darkBoxController);

    darkBoxController.forward();

    lightBoxController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 350));

    lightBoxOffset =
        Tween<Offset>(begin: const Offset(1.5, 0), end: Offset.zero)
            .animate(lightBoxController);

    lightBoxController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          SlideTransition(position: darkBoxOffset, child: const DarkBox()),
          Positioned(
            bottom: -20,
            child: SlideTransition(
                position: lightBoxOffset,
                child:
                    const SizedBox(width: 250, height: 100, child: LightBox())),
          ),
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height * 0.05),
    ]);
  }
}
