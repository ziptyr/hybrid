main() {
  try {
    int age;
    int dogyears = 7;

    print(age * dogyears);
  } on NoSuchMethodError {
    print('hello');
  }
}
