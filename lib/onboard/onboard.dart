import 'dart:math';

import 'package:flutter/material.dart';

import 'comuunity/community.dart';
import 'learning/learning.dart';
import 'widget/page_indicator.dart';

import 'widget/header.dart';
import 'widget/titlebox.dart';
import 'work/work.dart';

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> with TickerProviderStateMixin {
  late AnimationController buttonController;

  late List<AnimationController> boxController = [];
  late List<Animation<Offset>> boxOffset = [];

  @override
  void initState() {
    super.initState();
    buttonController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 300,
      ),
      lowerBound: 2,
      upperBound: 4,
    )..addListener(() {
        setState(() {});
      });

    boxController.add(AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250)));
    boxController.add(AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250)));
    boxController.add(AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250)));

    boxOffset.add(
        Tween<Offset>(begin: Offset.zero, end: const Offset(-1.5, 0.0))
            .animate(boxController[0]));
    boxOffset.add(
        Tween<Offset>(begin: Offset.zero, end: const Offset(-1.5, 0.0))
            .animate(boxController[1]));
    boxOffset.add(
        Tween<Offset>(begin: Offset.zero, end: const Offset(-1.5, 0.0))
            .animate(boxController[2]));
  }

  final List<Widget> pages = [
    const Community(),
    const Learning(),
    const Work()
  ];
  final List<String> title = ["Community", "Keep learning", "Work together"];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const Header(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            SlideTransition(position: boxOffset[index], child: pages[index]),
            Titlebox(
              title: title[index],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Column(
              children: [
                OnboardingPageIndicator(
                  angle: pi * buttonController.value,
                  currentPage: index + 1,
                  child: RawMaterialButton(
                    padding: const EdgeInsets.all(12),
                    elevation: 0.0,
                    shape: const CircleBorder(),
                    fillColor: Colors.white,
                    onPressed: () async {
                      if (index == 0) {
                        buttonController.forward();
                        boxController[index].forward();
                        await Future.delayed(const Duration(milliseconds: 300));

                        setState(() {
                          index++;
                        });
                        boxController[index - 1].reverse();
                      } else if (index == 1) {
                        buttonController.reverse();
                        boxController[index].forward();
                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          index++;
                        });
                        boxController[index - 1].reverse();
                      } else {
                        buttonController.forward();
                        boxController[index].forward();
                        await Future.delayed(const Duration(milliseconds: 300));
                        setState(() {
                          index = 0;
                        });
                        boxController[2].reverse();
                        buttonController.reverse();
                      }
                    },
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.blue,
                      size: 32.0,
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
