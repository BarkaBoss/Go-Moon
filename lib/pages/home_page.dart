import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _pageTitle(),)
    );
  }

  Widget _pageTitle(){
    return const Text("#GoMoon", style: TextStyle(
      color: Colors.white,
      fontSize: 70,
      fontWeight: FontWeight.w800
    ),);
  }

  Widget _astroWidget(){
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }
}
