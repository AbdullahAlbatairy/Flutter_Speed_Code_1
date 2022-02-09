import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ScooterWidget extends StatefulWidget {
  ScooterWidget({Key? key}) : super(key: key);

  @override
  State<ScooterWidget> createState() => _ScooterWidgetState();
}

class _ScooterWidgetState extends State<ScooterWidget> {
  double _bottomTextPosY = 120;

  Widget _buildCenterText() {
    return Center(
      child: GradientText(
        'Go',
        colors: Colors.primaries,
        //textGradientColor,
        gradientDirection: GradientDirection.ttb,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  Widget _buildScooterImg(double height) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: height * .26,
      child: Image.asset("assets/images/scooter.png"),
    );
  }

  Widget _buildBottomText() {
    return Positioned(
      bottom: _bottomTextPosY,
      child: const Text("GoPro"),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildCenterText(),
        _buildScooterImg(height),
        _buildBottomText(),
      ],
    );
  }
}
