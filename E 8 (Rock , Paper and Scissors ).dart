import 'dart:io';
import 'dart:math';

void main() {
/*********
Algorithm:-
    1-print message for user that explain the game rules
    2-create random class for computer choice
    3-create map rule to detect teh win rules
    4-initialize user and computer win count
    5-create list of string to computer choose
    6-check if the program is still run
      a-make the computer choose from list
      b-print message what it choose
      c-print message for user to enter what he want
    7-check if the user choice is exit
      a-print message you choose exit
      b- end the program
    8-check if user choice not equal game choice print message that enter a valid option
    9-check if computer choice equal user choice
      a-print dram
    10-check if the computer choice from rules equal user choice
      a-print message that the computer win
      b-computer count increment by 1
    11-check if the user choice from rules equal computer choice
      a-print message that the user win
      b-user count increment by 1
*********/

  stdout.write('''
  
  welcome to Rock , Paper , Scissors Game :-
  ------------------------------------------
  ***** Rules of the Game : *****
  
  1-Scissors win the Paper
  2-Rock win the Scissors
  3-Paper win the Rock
  4-If Two Choices are the Same the Game is Draw
  
  Good Luck (: (: (:
  
  ''');
  final random = Random();
  Map rules =
  {
    'scissors':'paper',
    'rock':'scissors',
    'paper':'rock',
  };

  int userCount=0;
  int computerCount=0;
  int draw=0;

  List<String> gameChoice=['paper','scissors','rock'];

  while(true)
  {
    String computerChoice=gameChoice[random.nextInt(gameChoice.length)];
    print('please select your choice ${gameChoice.join(',')} : ');
    String userChoice=stdin.readLineSync()!.toLowerCase();
    if(userChoice=='exit')
    {
      print('you choose exit');
      print('ahmed : $userCount\ncomputer : $computerCount\ndraw : $draw');
      break;
    }
      if(!gameChoice.contains(userChoice))
      {
        print('please choose known choice ${gameChoice.join(',')}');
      }
    else if(computerChoice == userChoice)
    {
      print('Drawn...');
      draw+=1;
    }
   else  if(rules[computerChoice]==userChoice)
    {
      print('Computer win');
      computerCount+=1;
    }
   else  if(rules[userChoice]==computerChoice)
    {
      print('user win');
      userCount+=1;
    }
  }

}



