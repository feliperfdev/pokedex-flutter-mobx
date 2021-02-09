import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOutCubic,
    ).drive(Tween(begin: 0, end: 2));

    controller..forward();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/categories');
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RotationTransition(
        turns: animation,
        child: Center(
          child: Container(
            child: Image.asset(
              'assets/images/pokeball_dark.png',
              color: Colors.grey.withOpacity(0.6),
              height: 160,
              width: 160,
            ),
          ),
        ),
      ),
    );
  }
}
