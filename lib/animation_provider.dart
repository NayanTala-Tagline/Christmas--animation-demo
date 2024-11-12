import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';

class AnimationProvider extends ChangeNotifier {
  AnimationProvider(this.vsync) {
    initiateAnimation();
  }
  final TickerProvider vsync;

  late AnimationController textSantaScaleController;
  late AnimationController textFadeController;
  late AnimationController slideTransitionController;
  late AnimationController slideTextTransitionController;
  late AnimationController textFade2Controller;
  late AnimationController slideText2TransitionController;
  late AnimationController textFade3Controller;
  late AnimationController slideTextTransition2Controller;
  late AnimationController slideTextTransition3Controller;
  late AnimationController btnScaleController;

  late GifController? gifController;

  Future<void> initiateAnimation() async {
    gifController = GifController(autoPlay: false);

    textSantaScaleController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
    );
    textFadeController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 200),
    );
    slideTransitionController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
      lowerBound: -1,
      upperBound: 0,
      value: -1,
    );
    slideTextTransitionController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
      lowerBound: -2,
      upperBound: 0,
      value: -2,
    );
    textFade2Controller = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
    );
    slideText2TransitionController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 500),
      lowerBound: 0,
      upperBound: 1,
      value: 1,
    );
    textFade3Controller = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
    );
    slideTextTransition2Controller = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
      lowerBound: -2,
      upperBound: 0,
      value: -2,
    );
    slideTextTransition3Controller = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
      lowerBound: -2,
      upperBound: 0,
      value: -2,
    );
    btnScaleController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 1000),
    );
    await textSantaScaleController.forward();
    await textFadeController.forward();
    gifController?.play();
    await slideTransitionController.forward();
    await Future.delayed(const Duration(milliseconds: 400));
    await slideTextTransitionController.forward();
    await Future.delayed(const Duration(milliseconds: 400));
    await textFade2Controller.forward();
    await slideText2TransitionController.reverse();
    await textFade3Controller.forward();
    await slideTextTransition2Controller.forward();
    await slideTextTransition3Controller.forward();
    await btnScaleController.forward();
  }

  @override
  void dispose() {
    textSantaScaleController.dispose();
    textFadeController.dispose();
    gifController?.dispose();
    slideTransitionController.dispose();
    slideTextTransitionController.dispose();
    textFade2Controller.dispose();
    slideText2TransitionController.dispose();
    textFade3Controller.dispose();
    slideTextTransition2Controller.dispose();
    slideTextTransition3Controller.dispose();
    btnScaleController.dispose();
    super.dispose();
  }
}
