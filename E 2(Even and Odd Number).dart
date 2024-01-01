
import 'dart:io';

void main() {
/*********
Exercise :-
Ask the user for a number. Depending on whether the number is even or odd, print out an
appropriate message to the user.

Algorithm:-
    1-print message for user to enter number
    2-check if number is even
      a-if number is even print even string or true as bool
      b-if not print odd or false
*********/
print(numCheck1()); print(numCheck2());

}
bool numCheck1(){
  stdout.write('Enter a number to Check : ');
  int number=int.parse(stdin.readLineSync()!);
  if(number.isEven)
  {
    return true;
  }
  else
  {
    return false;
  }

}


String numCheck2(){
  stdout.write('Enter a number to Check : ');
  int number=int.parse(stdin.readLineSync()!);
  if(number.isEven)
  {
    return 'Even Number';
  }
  else
  {
    return 'Odd Number';
  }

}

