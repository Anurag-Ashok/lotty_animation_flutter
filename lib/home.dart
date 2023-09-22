import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  final bool _customicon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(title: Text('Expanstin sample')),
      body: Container(
        color: Colors.lightGreenAccent,
        child: ExpansionTile(
          title: Text('Expansion tyle'),
          trailing: Icon(_customicon
              ? Icons.arrow_drop_down_circle
              : Icons.arrow_drop_down),
          children: [
            Container(
              width: 380,
              height: 200,
              color: Colors.white,
              child: Lottie.asset('lottie/animation_lmqpvnqt.json'),
            ),
          ],
          onExpansionChanged: (bool expanded) {},
        ),
      ),
    );
  }
}
