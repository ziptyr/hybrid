import 'dart:io';
import 'dart:async';


main(List<String> arguments) {
  stdout.write('What is your name?\n\n');

  String name = stdin.readLineSync()!;

  if (name.isEmpty) {
    stderr.write('Missing name\n');
  } else {
    stdout.write('Hello ${name}\n');
  }
}
