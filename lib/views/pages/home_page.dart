import 'package:flutter/material.dart';
import 'package:recap/data/constants.dart';
import 'package:recap/views/pages/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Base line", style: KTextStyle.titleText),
                    Text("Another baseline", style: KTextStyle.descripText),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
