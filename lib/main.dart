import 'dart:developer';

import 'package:flutter/material.dart';
import 'MyStack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('首页'),
        ),
        body: const MyHome(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.verified_user_rounded))
          ],
        ),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  List<Widget> _initList() {
    List<Widget> list = [];
    for (int i = 0; i < 6; ++i) {
      list.add(Container(
        child: Column(
          children: [
            Image.asset(
              'assets/bg.jpg',
              width: 150,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '我是第$i张图片',
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      ));
    }
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    elevation: MaterialStateProperty.all(20),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)))),
                onPressed: () {},
                child: const Text('圆角')),
            TextButton(
                onPressed: null,
                style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(31, 39, 30, 30)),
                child: const Text(
                  "按钮",
                  style: TextStyle(color: Colors.white),
                )),
            Stack(
              children: [
                Positioned.fill(
                    child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.red, Colors.green, Colors.black12])),
                )),
                const TextButton(
                    onPressed: null,
                    child: Text(
                      '按钮',
                      style: TextStyle(fontSize: 24),
                    )),
              ],
            ),
            const OutlinedButton(
              onPressed: null,
              child: Text('点'),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(backgroundColor: Colors.black12),
              onPressed: null,
              icon: const Icon(Icons.account_box),
              label: const Text('btn'),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    // icon: Icon(Icons.ac_unit),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        animationDuration: const Duration(seconds: 2)),

                    onPressed: () {},
                    child: const Text('登录'),
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(const CircleBorder(
                      side: BorderSide(style: BorderStyle.none)))),
              child: const Text("圆形"),
            )
          ],
        )
      ],
    );
  }
}
