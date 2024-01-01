import 'dart:io';
void main() {
/*********
Exercise :-

Create a program that asks the user for a number and then prints out a list of all the
divisors of that number.
**If you don’t know what a divisor is, it is a number that divides evenly into another
number. For example, 13 is a divisor of 26 because 26 / 13 has no remainder

Algorithm:-
    1-print message for user to enter a number
    2-initialize list of int to store new values of the divisors
    3-iterate from 1 to 100
    4-check if reminder for number on value equal 0
       a-if yes then add the values in the new list
    5-print new list
*********/
divisorNum();
}
void divisorNum()
{
  stdout.write('Enter Number :');
  int number=int.parse(stdin.readLineSync()!);
  List<int> newListDivisors=[];
  for(int i=1;i<=100;i++) //you can suggess any number to test , I suggess number 100 here 
  {
    if(number%i==0)
    {
      newListDivisors.add(i);
    }
  }
  print(newListDivisors);
}
