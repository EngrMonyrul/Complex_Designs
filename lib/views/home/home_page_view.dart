import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../customNavigationBar/custom_navigation_bar1.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Center(
          child: Column(
            children: [
              CupertinoButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CustomNavigationBar()));
                },
                child: const Text('Custom Navigation Bar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
