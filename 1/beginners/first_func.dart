// Define a function.
import 'dart:math';
import 'dart:io';

void printInteger(int aNumber) {
  int bNumber = sqrt(aNumber).toInt();
  print('The number is $bNumber.'); // Print to console.
}

// This is where the app starts executing.
void main() {
  // #1
  //var number = 777; // Declare and initialize a variable.
  //printInteger(number); // Call a function.

  // #2
  //var numbers = [100, 150, 200, 250, 300];
  //numbers.forEach((int num) {
  //  printInteger(num);
  //});

  // #3
  print('Give number');
  int? number = int.parse(stdin.readLineSync()!, onError: (source) => 0);
  for (var i = 0; i < 5; i++) {
    printInteger(number + i * 50);
  }
}
