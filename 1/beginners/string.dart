void main() {
  String name = 'firstname lastname';
  int index = name.indexOf(' ');

  print(name.substring(0, index).trim());
  print(name.substring(index).trim());

  print(name.length);
  print(name.contains('#'));

  List parts = name.split(' ');
  print(parts);
}
