// ignore_for_file: prefer_const_constructors

import 'package:card_3d/neocontainer.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Fluttertoast.showToast(
        msg: "Click To Flip",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: FlipCard(
          front: NeoContainer(
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'FRONT',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                Text(
                  'Click to GO Back',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
          back: NeoContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  'BACK',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                Text(
                  'Click to Go Front',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 1,
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
