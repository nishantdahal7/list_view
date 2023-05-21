import 'package:flutter/material.dart';
import 'package:list_view/widget/card_view.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          displayCard('I am a card', context),
          displayCard('I am a card 2', context),
        ],
      )),
    );
  }
}
