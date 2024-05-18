import 'dart:io';

void main() {
  File file = File('stidents.csv');
  file.writeAsStringSync('name,age,address:\n');
  stdout.write('Enter name:');
  String name = stdin.readLineSync()!;
  stdout.write('Enter age:');
  String age = stdin.readLineSync()!;

  stdout.write('Enter address:');
  String address = stdin.readLineSync()!;
  file.writeAsStringSync("$name,$age,$address", mode: FileMode.append);
  String contents = file.readAsStringSync();
  List<String> lines = contents.split('\n');
  print('------------');
  for (var line in lines) {
    print(line);
  }
}
