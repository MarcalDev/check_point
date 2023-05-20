import 'package:flutter/material.dart';

import '../widgets/home_background_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const HomeBackgroundWidget(
      child: Column(children: [

      ]),
    );
  }
}