main() {
  Map people = {
    'dad': 'Bryan',
    'son': 'Chris',
    'daughter': 'Heather'
  };

  print(people);

  print(people.keys);
  print(people.values);

  print('dad is: ${people["dad"]}');


  Map<String, String> people2 = {};
  people2.putIfAbsent('dad', () => 'Bryan');
  people2.putIfAbsent('son', () => 'Chris');
  print(people2);
}
