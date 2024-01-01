
void main()
{
/*********
Exercise:-
    Let’s say you are given a list saved in a variable:
    a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
    Write a Dart code that takes this list and makes a new list that has only the even
    elements of this list in it.

    Algorithm:-
1-create int list
2-initialize new empty list to store new even values
3-iterate every element in list
  a-check if even then add value in new list
  b-return new list of  even values
*********/
  
  print('''
  
  ******* I Solved this Example by Two Ways and Both Generate The Same Result ******* 
  ''');
  print('''
  Result For First Function   :  ${evenCheck1()}
  
  Result For Second Function  :  ${evenCheck2()}
  ''');

}


List<int> evenCheck1()
{
  List<int> list1 = [1,2,4,6,5,7,8];
  List<int> newList=[];
 for(int i=0;i<list1.length;i++)
 {
   if(list1[i].isEven)
   {
     newList.add(list1[i]);
   }
 }
 return newList;
}




List<int> evenCheck2()
{
  List<int> list1 = [1,2,4,6,5,7,8];
  List<int> newList=[];
  for(int items in list1)
  {
    if(items.isEven)
    {
      newList.add(items);
    }
  }
  return newList;
}

