import 'dart:io';

void decToBinTail(int num, String result) {
  if (num == 0) {
    stdout.write(result);
    return;
  }
  decToBinTail(num ~/ 2, result + '${num % 2}');
}

void main() {
  decToBinTail(10, ""); // Output: 1010
}
