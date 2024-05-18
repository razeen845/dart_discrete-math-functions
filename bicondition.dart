void main() {
  print('truth table of bicondition function(p<->q)');
  truthTable(bicondition);
  print('\n');
  print('truth table of impication function: p->q');
  truthTable(implication);
  print('\n');
  print('truth table of conjunction: P^q');
  truthTable(conjunction);
  print('\n');
  print('truth table of disjunction');
  truthTable(disjunction);
}

bool bicondition(a, b) {
  return (a && b) || (!a && !b);
}

bool implication(a, b) {
  return !a && b;
}

bool conjunction(a, b) {
  return a && b;
}

bool disjunction(a, b) {
  return a || b;
}

void truthTable(fn) {
  print('P\tQ\tFunction');
  print('true\ttrue\t ${fn.call(true, true)}');
  print('true\t false\t ${fn.call(true, false)}');
  print('false\t true\t ${fn.call(false, true)}');
  print('false\t false\t ${fn.call(false, false)}');
}
