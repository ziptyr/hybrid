main () {
  int value;
  int init = 1;
  int max = 5;

  // runs atleast once
  value = init;
  do {
    print(value);
    value++;
  } while (value <= max);
  print('do-while');

  // valuates condition first
  value = init;
  while (value <= max) {
    print(value);
    value++;
  }
  print('while');

  value = init;
  do {
    print(value);
    value++;

    if (value == 3) {
      print('value is 3');
      continue;
    } else if (value > 5) {
      print('value is greater than 5');
      break;
    }

  } while (true);
}
