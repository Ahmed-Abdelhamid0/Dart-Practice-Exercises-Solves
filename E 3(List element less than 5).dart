void main() {
/*********
Exercise :-
Take a list, say for example this one:
 a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
and write a program that prints out all the elements of the list that are less than 5.

Algorithm:-
    1-create list of int numbers
    2-create for in loop to pass every element in list
    3-check if element less than 5
      a-if yes prent all element in list less than 5
      b-if not print message no element less than 5 in list
*********/

listNumbersCheck();
}

void listNumbersCheck()
{
  List<int> numList=[1,2,3,4,5,6,7];
  List<int> newList=[];
  for(int i=0;i<numList.length;i++)
  {
    if(numList[i]<5)
    {
      newList.add(numList[i]);
    }
  }
  print('The Numbers that Less than 5 in List are $newList');

}
