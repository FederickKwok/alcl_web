import 'package:flutter/material.dart';
import 'package:alcl_web/widgets/single_card.dart';

class HubCards extends StatelessWidget {
  HubCards({Key? key, required this.screenSize}) : super(key: key);

  final Size screenSize;

  final List<Widget> cards = List.generate(4, (i) => SingleCard());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Our Hubs',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Maersk Text'
          ),
        ),
        Container(
          child: Row(
            children: cards,
          ),
        )
      ],
    );
  }
}