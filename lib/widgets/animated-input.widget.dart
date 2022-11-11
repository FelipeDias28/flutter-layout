import 'package:flutter/material.dart';

class AnimatedInput extends StatelessWidget {
  final AnimationController controller;
  final Animation<Color?> containerColorAnim;
  final Animation<double> conatinerOpacityAnim;
  final Animation<double> containerBorderRadiusAnim;
  final Animation<double> containerSizeAnim;

  AnimatedInput({
    super.key,
    required this.controller,
  })  : conatinerOpacityAnim = Tween(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.7, // 70% do tempo da animação
              0.9, // 90% do tempo da animação
            ),
          ),
        ),
        containerSizeAnim = Tween(
          begin: 60.0,
          end: 280.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.2,
              0.3,
            ),
          ),
        ),
        containerBorderRadiusAnim = Tween(
          begin: 0.0,
          end: 30.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.25,
              0.4,
            ),
          ),
        ),
        containerColorAnim = ColorTween(
          begin: Colors.white.withOpacity(0),
          end: Colors.black12,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.0,
              0.25,
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
