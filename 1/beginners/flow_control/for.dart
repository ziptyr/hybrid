main () {
  List people = ['Bryan', 'Heather' , 'Chris'];

  print(people);

  for (int i=0; i < people.length; i++) {
    print('Person at ${i} is ${people[i]}');
  }

  // cannot get the index
  people.forEach((element) {
    print('person is: ${element}');
  });
}
