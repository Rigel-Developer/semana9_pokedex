import 'package:flutter/material.dart';

class PokemonDetailWidget extends StatelessWidget {
  String title;
  String value;

  PokemonDetailWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: const TextStyle(
              color: Colors.black45,
            ),
          ),
          Text(value),
        ],
      ),
    );
  }
}
