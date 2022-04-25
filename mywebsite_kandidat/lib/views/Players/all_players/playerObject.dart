//import 'package:flutter/material.dart';

class Match{
  late String name;
  late List<int> xPositions;
  late List<int> yPositions;
}

class Player{
  late String name; // Later added by coach
  late int idPlayer; // Id it gets when created - connected with a picture?
  late int number; // Later added by coach, or updated if found
  late String team; // Later added or changed by coach
  late int birthYear;
  late String positionInGame;
  late String distance;
  List<Match> matches = [];
  late int highSpeed;  // Created by us
  late int maxAcc;
  final otherIDs = <int> [];  // List of ids connected to the same person

  Player(String name, int number, int birthYear){
    this.name = name;
    this.number = number;
    this.birthYear = birthYear;
  }
}
// if two (or more) players have the same number, name and team they get added
// together into one person

class Team{
  late String name; // Later added or changed by coach
  late String colour; // Maybe not needed
  List<Player> players = [];  // list of all players in this team

  Team(String name, String colour, players){
    this.name = name;
    this.colour = colour;
    this.players = players;
  }
}