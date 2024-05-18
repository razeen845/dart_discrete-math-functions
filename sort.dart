import 'dart:io';

void main() {
  List<int> value = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; //taking list
  print('enter any value');
  int search = int.parse(stdin.readLineSync()!); // take input of number in the above list to be be searched
  int si = 0; //starting index
  int ei = value.length; //ending index
  int mp = ((si + ei) / 2).round(); // take midpoint
  bool Found = false; //used to initialize while
  while (!Found && si <= ei) {
    mp = ((si + ei) / 2).round();
    if (search == value[mp]) {
      print('found');
      Found = true;
    } else if (search < value[mp]) {
      ei = mp - 1;
    } else {
      si = mp + 1;
    }
  }
  if (Found) {
    print('the $search is at the index:$mp');
  } else {
    print('the $search is not in the list');
  }
}
