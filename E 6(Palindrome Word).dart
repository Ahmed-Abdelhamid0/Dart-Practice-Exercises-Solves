import 'dart:io';

void main()
{
/*********
Exercise:-

Ask the user for a string and print out whether this string is a palindrome or not.
 *** A palindrome is a string that reads the same forwards and backwards.***

Algorithm:-
1-print message for user to enter a word
2- Reverse word from split method then join it
  a-check if reverse  equal word
  b-print palindrome word
  c-if not print not palindrome
*********/
  palindromeCheck();
}
void palindromeCheck()
{
  stdout.write('''**** The Word in Lower or Upper Case are True ***
  Enter Any Word to Check : 
  ''');
  String word=stdin.readLineSync()!.toLowerCase();
  print('The Word is : $word');
  String revWord=word.split('').reversed.join('');
  print('The Reverse for The Word is : $revWord');

  if(revWord==word)
  {
    print('$word is a Palindrome Word :) :) :)');
  } else
  {
    print('''$word is Not a Palindrome Word ): ): ):
    *** Please Try to Enter Another Word ***
    ''');
  }
}
