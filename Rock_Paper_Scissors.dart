# Dart_Rock_Paper_Scissors
import 'dart:io';
import 'dart:math';

enum Situation {Rock,Paper,Scissors}

void main() {
  String PlayAgain = "Yes";
  while (PlayAgain != "No") {
  print(Situation.values);
  print("Please choose one of the above three cases?");
  var PlayerSelection = stdin.readLineSync();
  if(PlayerSelection == Situation.Rock.name){
    print("Player Select : Rock");
  }
  else if(PlayerSelection == Situation.Paper){
    print("Player Select : Paper");
  }
  else if(PlayerSelection == Situation.Scissors){
    print("Player Select : Scissors");
  }
  else{
    print("You entered an invalid character!");
  }
  String computerstation = ComputerSelection();
  Win(PlayerSelection!, computerstation);
  stdout.write("Do you want to play again (Type \"Yes or \"No) : ");
  PlayAgain = stdin.readLineSync()!;
  }
}
String ComputerSelection(){
  Random random = new Random();
  List<String> situationcpu = ["Rock","Paper","Scissors"];
  int computerstationIndex = Random().nextInt(3);
  String computerstation = situationcpu[computerstationIndex];
    if (computerstation == 'Rock') {
      print("CPU : Rock");
      return "Rock" ;
    } else if (computerstation == 'Paper') {
      print("CPU : Paper");
      return "Paper";
    } else 
      print("CPU : Scissors");
      return "Scissors"; 
}
void Win(String PlayerSelection, String computerstation){
  if(PlayerSelection == computerstation){
    print("Draw");
  } else if (PlayerSelection == "Rock" && computerstation == "Scissors") {
    print("Player Win ");
  } else if (PlayerSelection == "Scissors" && computerstation == "Paper") {
    print("Player Win ");
  } else if (PlayerSelection== "Paper" && computerstation == "Rock") {
    print("Player Win ");
  } else {
    print("Computer Win ");
  }
}
