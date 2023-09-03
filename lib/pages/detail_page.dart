import 'package:flutter/material.dart';
import 'package:semana9_pokedex/models/pokemon_model.dart';
import 'package:semana9_pokedex/ui/widgets/item_types_widget.dart';
import 'package:semana9_pokedex/ui/widgets/pokemon_detail_widget.dart';

class DetailPage extends StatelessWidget {
  Pokemon pokemon;

  DetailPage({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff98CDBD),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff98CDBD),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            top: height * 0.1,
            right: -height * 0.03,
            child: Image.asset(
              "assets/images/pokeball.png",
              height: 200,
              // width: 200,
              color: Colors.white.withOpacity(0.27),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pokemon.name!,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        // ItemTypesWidget(type: "Grass"),
                        // ItemTypesWidget(type: "Grass"),
                        ...pokemon.type!
                            .map((e) => ItemTypesWidget(
                                  type: e,
                                ))
                            .toList(),
                      ],
                    )
                  ],
                ),
                Text(
                  "#${pokemon.num!}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              const Expanded(
                flex: 4,
                child: SizedBox(),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            const Text(
                              "About Pokemon",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            PokemonDetailWidget(
                              title: "Height",
                              value: pokemon.height!,
                            ),
                            PokemonDetailWidget(
                              title: "Weight",
                              value: pokemon.weight!,
                            ),
                            PokemonDetailWidget(
                              title: "Candy",
                              value: pokemon.candy!,
                            ),
                            PokemonDetailWidget(
                              title: "Egg",
                              value: pokemon.egg!,
                            ),
                          ],
                        ),
                      ),
                      Positioned.fill(
                        // bottom: 0,
                        // right: 0,
                        top: -190,
                        // left: 30,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Image.network(
                            pokemon.img!,
                            height: 250,
                            width: 250,
                            scale: 0.8,
                            // color: Colors.grey.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
