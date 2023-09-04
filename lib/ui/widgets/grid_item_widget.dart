import 'package:flutter/material.dart';
import 'package:semana9_pokedex/constants.dart';
import 'package:semana9_pokedex/models/pokemon_model.dart';
import 'package:semana9_pokedex/pages/detail_page.dart';
import 'package:semana9_pokedex/ui/widgets/item_types_widget.dart';

class GridItemWidget extends StatelessWidget {
  Pokemon pokemon;
  GridItemWidget({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    // print(colorBackgroundPokemon.map((e) => e));
    return GestureDetector(
      onTap: () {
        print(pokemon.toJson());
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              pokemon: pokemon,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorBackgroundPokemon[pokemon.type?.first] ?? Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -10,
              right: -8,
              child: Image.asset(
                "assets/images/pokeball.png",
                height: 95,
                width: 95,
                color: Colors.white.withOpacity(0.27),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pokemon.name!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ...pokemon.type!
                      .map((e) => ItemTypesWidget(
                            type: e,
                          ))
                      .toList(),
                ],
              ),
            ),
            Positioned(
                bottom: 10,
                right: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Text(
                        "#${pokemon.num!}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.27),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Image.network(
                      pokemon.img!,
                      height: 75,
                      width: 75,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
