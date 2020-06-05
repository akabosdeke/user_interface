import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
class MyFadeAnimation extends StatefulWidget {
  final Widget child;


  MyFadeAnimation.name(this.child);

  @override
   createState() => MyFadeAnimationState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class MyFadeAnimationState extends State<MyFadeAnimation> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation animation;

  @override
void initState()
  {
    // TODO: implement initState
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = Tween(
      begin:0.0 ,
      end: 1.0,
    ).animate(controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return FadeTransition(opacity: animation,child: widget.child,);
  }


  }

