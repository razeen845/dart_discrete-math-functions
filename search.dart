import 'dart:io';

void main() {
  List<int> value = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 16, 18, 20];
  print("enter any value :");
  int search = int.parse(stdin.readLineSync()!);

  int si = 0;
  int ei = value.length;
  int mp = ((si + ei) / 2).round();

  bool found = false;

  while (!found && si <= ei) {
    mp = ((si + ei) / 2).round();
    if (search == value[mp]) {
      print("Found!");
      found = true;
    } else if (search < value[mp]) {
      ei = mp - 1;
    } else {
      si = mp + 1;
    }
  }
  if (found) {
    print("The value of $search is in the list at index $mp");
  } else {
    print("The value $search is not in the list");
  }
}
