import 'package:flutter/material.dart';
import 'package:list_view/widget/card_view.dart';

class GridviewView extends StatelessWidget {
  const GridviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Grid Screen'),
        ),
        body: SafeArea(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              for (int i = 1; i <= 8; i++) ...{displayCard('$i', context)}
            ],
          ),
        ));
  }
}
