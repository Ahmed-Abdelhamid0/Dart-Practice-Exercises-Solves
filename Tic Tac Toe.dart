import 'dart:io';

void main()
{
/*********
Algorithm:-
*********/
  generateBoard();
  getCharacter();

}

List<String> values=['1','2','3','4','5','6','7','8','9'];
List<String> combinations=['012','036','048','345','678','246','147','258'];
bool winner =false;
bool isPlayer1=true;
int moveCount=0;


void generateBoard()
{

  print('|  |   |   |');
  print('|${values[0]} | ${values[1]} | ${values[2]} |');
  print('|__|___|___|');

  print('|  |   |   |');
  print('|${values[3]} | ${values[4]} | ${values[5]} |');
  print('|__|___|___|');

  print('|  |   |   |');
  print('|${values[6]} | ${values[7]} | ${values[8]} |');
  print('|__|___|___|');
}



void getCharacter()
{
  stdout.write('Choose Number for ${isPlayer1==true ?'Player 1' : 'Player 2'} : ');
  int number=int.parse(stdin.readLineSync()!);
  if(isPlayer1==true)
  {
    values[number - 1]='x';
  }else
  {
    values[number - 1]='o';
  }
  isPlayer1 =! isPlayer1;
  moveCount++;

  if(moveCount==9)
  {
    winner=true;
    print('Draw Game....');

  }

  else
  {
    generateBoard();
  }

  playerCheck('x');
  playerCheck('o');

  if(winner==false)
  {
    getCharacter();
  }
}



bool checkCombination(String combination , String check)
{
  List<int> numbers = combination.split('').map((item)=> int.parse(item) ).toList();
  bool match = false;
  for(final item in numbers)
  {
    if(values[item]==check)
    {
      match=true;
    }else
    {
      match=false;
      break;
    }

  }
  return match;
}



void playerCheck(player)
{
  for(final item in combinations)
  {
    bool combination_validity=checkCombination(item, player);
    if(combination_validity==true)
    {
      print('$player is won');
      winner=true;
      break;
    }

  }
}