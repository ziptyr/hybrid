main() {
  int sqrtMeters = squareMeters(length: 10, width: 5);
  print('Squre meters: ${sqrtMeters}');

  download('myfile');
  download('myfile2', port: 90);
}

int squareMeters({required int width, required int length}) {
  return width * length;
}

void download(String file, {int port: 80}) {
  print('Download ${file} on port ${port}');
}
