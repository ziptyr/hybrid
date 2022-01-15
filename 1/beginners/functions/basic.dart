main() {
  test();
  sayHello('Bryan');

  sayHello('Bryan', 'Lastname');

  sayHello('Bryan', 'Lastname', 43);
}

void test() {
  print('testing');
}

// ? null safety
void sayHello(String name, [String lastname = '', int? age = null]) {
  if (lastname.isEmpty) {
    print('Hello ${name}');
  } else {
    print('Hello ${name} ${lastname}');
  }

  if (age != null) {
    print('Your age is ${age}');
  }
}
