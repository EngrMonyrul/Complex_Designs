import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Custom Navigation Bar 1')),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: CustomNavBarDesign(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .5,
                    width: MediaQuery.of(context).size.width * .9,
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 100,
                          spreadRadius: 100,
                          offset: Offset(0, -5),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(CupertinoIcons.rectangle_grid_2x2_fill, size: MediaQuery.of(context).size.height * .4),
                        const Spacer(),
                        Icon(CupertinoIcons.settings, size: MediaQuery.of(context).size.height * .4),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -20,
                  child: Container(
                    alignment: Alignment.center,
                    height: (((MediaQuery.of(context).size.height * .5) / 22) * 14) * 2,
                    width: ((MediaQuery.of(context).size.width * .9) / 68) * 16,
                    decoration: BoxDecoration(
                      color: Color(0xFFFE7D55),
                      border: Border.all(color: Colors.deepOrange.shade100, width: 15),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(CupertinoIcons.add, size: MediaQuery.of(context).size.height * .3, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomNavBarDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final x = size.width;
    final y = size.height;
    final xs = size.width / 68;
    final ys = size.height / 22;
    final path = Path();
    path.moveTo(xs * 2, 0);
    path.quadraticBezierTo(xs * 0.1, ys * -0.1, 0, ys * 2);
    path.lineTo(0, ys * 20);
    path.quadraticBezierTo(xs * 0.1, ys * 21.9, xs * 2, y);
    path.lineTo(xs * 66, y);
    path.quadraticBezierTo(xs * 67.9, ys * 21.9, x, ys * 20);
    path.lineTo(x, ys * 2);
    path.quadraticBezierTo(xs * 67.9, ys * 0.1, xs * 66, 0);
    path.lineTo(xs * 45, 0);
    path.quadraticBezierTo(xs * 43.1, ys * 0.05, xs * 43, ys * 2);
    path.quadraticBezierTo(xs * 42, ys * 10.25, xs * 34, ys * 10.5);
    path.quadraticBezierTo(xs * 26, ys * 10.25, xs * 25, ys * 2);
    path.quadraticBezierTo(xs * 24.9, ys * 0.1, xs * 23, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class MyCustomNavBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    /*------------------------> Height and Width Measurement <--------------------*/
    final x = size.width;
    final y = size.height;
    final xs = size.width / 68;
    final ys = size.height / 22;
    /*----------------------------> Path Connection <------------------------*/
    final path = Path();

    /*--------------------------------------> General Draw <----------------------------------*/
    path.moveTo(xs * 2, 0);
    path.lineTo(0, ys * 2);
    path.lineTo(0, ys * 20);
    path.lineTo(xs * 2, y);
    path.lineTo(xs * 66, y);
    path.lineTo(x, ys * 20);
    path.lineTo(x, ys * 2);
    path.lineTo(xs * 66, 0);
    path.lineTo(xs * 45, 0);
    path.lineTo(xs * 44, ys * 2);
    path.lineTo(xs * 44, ys * 12);
    path.lineTo(xs * 42, ys * 14);
    path.lineTo(xs * 30, ys * 14);
    path.lineTo(xs * 28, ys * 12);
    path.lineTo(xs * 28, ys * 2);
    path.lineTo(xs * 26, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class GeneralDraw extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    /*------------------------> Height and Width Measurement <--------------------*/
    final x = size.width;
    final y = size.height;
    /*----------------------------> Path Connection <------------------------*/
    final path = Path();

    /*--------------------------------------> General Draw <----------------------------------*/
    path.moveTo(0, 0);
    path.lineTo(x, 0);
    path.lineTo(x, y);
    path.lineTo(0, y);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
