import 'dart:io';

void main() {
/*********
Exercise :-
Create a program that asks the user to enter their name and their age. Print out a message
that tells how many years they have to be 100 years old.

Algorithm:-
    1-print message for user to enter a name
    2-print message for user to enter age
    3-calculate years equal 100 - age
    4-print how many years have to be 100 years
*********/
  
userYears();

}

void userYears()
{
  stdout.write('Enter a Name Please : ');
  String name=stdin.readLineSync()!;
  stdout.write('Enter Age Please : ');
  int age = int.parse(stdin.readLineSync()!);
  print('Name : $name');
  print('Age : $age');
  int userYearsCal=100-age;
  print('$name is $age ,and have $userYearsCal years to be 100 years old');
}

