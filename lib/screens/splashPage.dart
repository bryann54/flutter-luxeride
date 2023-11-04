// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/scheduler.dart';
import 'package:flutter_luxeride/screens/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller with a duration (e.g., 2 seconds)
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Create a Tween that defines how your animation should behave
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    // Start the animation
    _controller.forward();

    // Add a listener to navigate to the next screen when the animation completes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Navigate to the next screen (e.g., your main app screen)
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
          return const Login();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.cyanAccent, Colors.cyan],
              ),
            ),
            child: FadeTransition(
              opacity: _animation,
              child: Image.asset(
                  'images/luxe.png'), // Replace with your image path
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Dispose the animation controller when no longer needed
    super.dispose();
  }
}
