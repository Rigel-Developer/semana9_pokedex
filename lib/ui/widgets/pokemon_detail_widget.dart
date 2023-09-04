import 'package:flutter/material.dart';

class PokemonDetailWidget extends StatelessWidget {
  String title;
  String value;
  Color color;

  PokemonDetailWidget({
    super.key,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            value,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black45,
            ),
            // textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
