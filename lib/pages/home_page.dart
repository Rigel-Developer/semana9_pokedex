import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:semana9_pokedex/models/pokemon_model.dart';
import 'package:semana9_pokedex/ui/widgets/grid_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late Pokemon pokemon;
  late List<Pokemon> pokemons = [];

  getPokemons() async {
    String uri =
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
    final url = Uri.parse(uri);
    final response = await http.get(url);
    final body = jsonDecode(response.body);
    for (var item in body['pokemon']) {
      pokemons.add(Pokemon.fromJson(item));
    }
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(
            14.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pokedex",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GridView.count(
                physics: const ScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1.35,
                children: pokemons
                    .map(
                      (e) => GridItemWidget(pokemon: e),
                    )
                    .toList(),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
