void main()
{
/*********
Exercise :-

Take two lists, for example:
a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
and write a program that returns a list that contains only the elements that are
common between them (without duplicates). Make sure your program works on two
lists of different sizes.

Algorithm:-
    1-create two lists of integer numbers with different sizes and convert it to set
    2-initialize empty set to store new list values
    3-iterate every list values (nested for loop)
      a-add intersection between two lists in the new list variable
    4-print new list that have new values and convert it to list
*********/
  listCheck();
}

void listCheck()
{
  List<int> list1 = [1,2,3,5,6,7,5];
  List<int> list2 = [7,10,3,5,8,6,1];
  Set<int> a=list1.toSet();
  Set<int> b=list2.toSet();
  Set<int> newList= {};
  for(int i=0;i<list1.length;i++)
  {
    for(int y=0;y<list2.length;y++)
    {
      newList=a.intersection(b);

    }

  }
 print('''Result for New List is :  
 ${newList.toList()}''');

}