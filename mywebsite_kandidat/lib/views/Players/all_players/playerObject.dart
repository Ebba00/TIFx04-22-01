import 'package:flutter/material.dart';

class Match{
  late String name;
  late List<double> xPositions;
  late List<double> yPositions;
  late List<List<Color>> heatmapMatch = [];
  Match(String name, List<double> xPositions, List<double> yPositions){
    this.name = name;
    this.xPositions = xPositions;
    this.yPositions = yPositions;
  }
}

class Player{
  late String name; // Later added by coach
  late int idPlayer; // Id it gets when created - connected with a picture?
  late int number; // Later added by coach, or updated if found
  late String team; // Later added or changed by coach
  late int birthYear;
  late String positionInGame;
  late String distance;
  late List<List<double>> xPositions;
  late List<List<double>> yPositions;
  List<Match> matches = [];
  late int highSpeed;  // Created by us
  late int maxAcc;
  final otherIDs = <int> [];  // List of ids connected to the same person

  Player(String name, int number, int birthYear, String positionInGame){
    this.name = name;
    this.number = number;
    this.birthYear = birthYear;
    this.positionInGame = positionInGame;
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