import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    ScreenScaler scaler = ScreenScaler()..init(context);
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 14, top: 50),
              child: Container(
                decoration: BoxDecoration(color: Color(0xFFD18585)),
                height: 116,
                // width: 343,
                width: scaler.getWidth(90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15,
                        top: 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xFFC4C4C4)),
                        height: 28,
                        width: 150,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 15),
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xFFA8D8AD)),
                        height: 30,
                        // width: 300,
                        width: scaler.getWidth(80),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 20, right: 10),
              child: Container(
                decoration: BoxDecoration(color: Color(0xFFD18585)),
                height: 116,
                // width: 343,
                width: scaler.getWidth(90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 75, left: 15),
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xFFA8D8AD)),
                        height: 30,
                        width: scaler.getWidth(80),
                        // width: 300,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              // alignment: Alignment(0.45, 0),
              child: Container(
                decoration: BoxDecoration(color: Color(0xFFC4C4C4)),
                height: 28,
                width: 130,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
