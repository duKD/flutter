import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(height: 250),
        Container(
          height: 250,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Colors.black.withAlpha(0),
                Colors.black12,
                Colors.black45
              ])),
          child: const Text(
            'Foreground Text',
            style: TextStyle(color: Colors.red, fontSize: 20.0),
          ),
        ),
        Positioned(
            top: 20,
            left: 20,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ))
      ],
    );
  }
}
