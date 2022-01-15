main() {
  List test = [1, 2, 3, 4];

  print('List is: ${test}');
  print('Lenght is: ${test.length}');

  print('First item is : ${test[0]}');
  // out of range gives error
  //print('First item is : ${test[100]}');

  print('Element at 3: ${test.elementAt(3)}');
  // out of range gives error
  //print('Element at 3: ${test.elementAt(100)}');

  // depricated method
  //List things = new List();
  List things = [];
  things.add(1);
  things.add('cats');
  things.add(true);
  print(things);

  // define list type
  List<int> numbers = [];
  // causes error
  //numbers.add('cats');
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  print(numbers);
}
