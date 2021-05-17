import 'package:flutter/material.dart';

class EntryPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      squareFragment(),
                      squareFragment(),
                      squareFragment(),
                      squareFragment(),
                      squareFragment(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      squareFragment(),
                      squareFragment(),
                      squareFragment(),
                      squareFragment(),
                      squareFragment(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      squareFragment(),
                      squareFragment(),
                      squareFragment(),
                      squareFragment(),
                      squareFragment(),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      squareFragment(),
                      squareFragment(),
                      Expanded(child: squareFragment()),
                      squareFragment(height: 60),
                      squareFragment(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget squareFragment({double height}) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 30,
      height: height ?? 30,
      decoration: BoxDecoration(
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3.0,
            spreadRadius: 0.5,
          )
        ],
      ),
    );
  }
}
