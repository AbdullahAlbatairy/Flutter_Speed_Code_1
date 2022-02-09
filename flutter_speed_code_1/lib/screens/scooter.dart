import 'package:flutter/material.dart';
import 'package:flutter_speed_code_1/widgets/scooter_widget.dart';

class ScooterScreen extends StatefulWidget {
  ScooterScreen({Key? key}) : super(key: key);

  @override
  State<ScooterScreen> createState() => _ScooterScreenState();
}

class _ScooterScreenState extends State<ScooterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          //TODO fix the background color
          //color: Theme.of(context).backgroundColor,
          boxShadow: const <BoxShadow>[
            //TODO Learn the box shadow parameters
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 20),
              blurRadius: 12,
            )
          ]),
      child: Stack(
        children: [
          ScooterWidget(),
        ],
      ),
    );
  }
}
