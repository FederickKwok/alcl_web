import 'dart:html';

import 'package:flutter/material.dart';

class SingleCard extends StatelessWidget {
  const SingleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Whatever',
            style: TextStyle(
              fontFamily: 'Maersk Headline',
              fontSize: 40,
              color: Colors.blue,
            ),
          ),
          Text(
            'Unified self-service portal for Maersk'
            'customer service agents to serve the SCM'
            'customers. The hub provides visibility'
            'about the customer’s supply chain, '
            'manage exceptions and execute workflow steps.',
            style: TextStyle(
              fontFamily: 'Maersk Text',
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}