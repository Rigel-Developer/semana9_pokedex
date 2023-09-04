import 'package:flutter/material.dart';
import 'package:semana9_pokedex/models/pokemon_model.dart';

Map<String, Color?> colorBackgroundPokemon = {
  "Grass": const Color(0xff98CDBD),
  "Poison": const Color(0xff7D26D7),
  "Fire": const Color(0xffEA8008),
  "Flying": const Color(0xffD72626),
  "Water": const Color(0xff71B9FA),
  "Bug": const Color(0xff26D74C),
  "Normal": const Color(0xffD7D7D7),
  "Electric": const Color(0xffEAEA08),
  "Ground": const Color(0xffD78008),
  "Fairy": const Color(0xffEA26D7),
  "Fighting": const Color(0xff802608),
  "Psychic": const Color(0xffEA26D7),
  "Rock": const Color(0xff808080),
  "Steel": const Color(0xff808080),

  // "Poison": const Color.fromARGB(15, 125, 38, 215),
  // "Fire": const Color.fromARGB(15, 234, 128, 8),
  // "Flying": const Color.fromARGB(15, 215, 38, 38),
  // "Water": const Color.fromARGB(15, 38, 38, 215),
  // "Bug": const Color.fromARGB(15, 38, 215, 76),
  // "Normal": const Color.fromARGB(15, 215, 215, 215),
  // "Electric": const Color.fromARGB(15, 234, 234, 8),
  // "Ground": const Color.fromARGB(15, 215, 128, 8),
  // "Fairy": const Color.fromARGB(15, 234, 38, 215),
  // "Fighting": const Color.fromARGB(15, 128, 38, 8),
  // "Psychic": const Color.fromARGB(15, 234, 38, 215),
  // "Rock": const Color.fromARGB(15, 128, 128, 128),
  // "Steel": const Color.fromARGB(15, 128, 128, 128),
};

List<Pokemon> pokemonsGlobal = [];
