main() {
  () {
    print('hello');
  };

  List people = ['Bryan', 'Heather', 'Chris'];

  people.forEach(print);

  people.forEach((element) {
    print(element);
  });

  //people.where((String name) => {
  //  switch (name) {
  //    case 'Chris':
  //      return true;
  //    case 'Bryan':
  //      return false;
  //    case 'Heather':
  //      return true;
  //  }
  //});
}
