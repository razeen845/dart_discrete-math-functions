import 'dart:io';

void main() {
  String originalFilePath = 'name.txt';
  String copiedFilePath = 'name_copied.txt';
  File originalFile = File(originalFilePath);
  String cont = originalFile.readAsStringSync();
  File copyFile = File(copiedFilePath);
  copyFile.writeAsStringSync(cont);
  print("File copied successfully!");
}
