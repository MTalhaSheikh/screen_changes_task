import 'dart:math';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color screenColor = Colors.cyan;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          screenColor =
              Colors.primaries[Random().nextInt(Colors.primaries.length)];
        });
      },
      child: Container(
        height: size.height,
        width: size.width,
        color: screenColor,
        child: Center(
          child: AvatarGlow(
            endRadius: 90.0,
            duration: const Duration(milliseconds: 1000),
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.grey[100],
                radius: 50.0,
                child: Text(
                  "Hey there",
                  style: TextStyle(color: screenColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
