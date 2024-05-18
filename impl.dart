void main() {
  print(implication(true, true));
  print(implication(true, false));
  print(implication(false, true));
  print(implication(false, false));
}

bool implication(a, b) {
  return !a && b;
}
