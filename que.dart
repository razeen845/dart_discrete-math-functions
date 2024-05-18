import 'dart:io';

void main() {
  File file = File('name.txt');
  file.writeAsStringSync("\n Muhammad abdullah", mode: FileMode.append);
  String contents = file.readAsStringSync();
  print('the file path is:${file.path}');
  print(contents);
}
