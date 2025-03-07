import 'dart:io';

bool gcdlike(int p, int q) => (q == 0) ? (p == 1) : gcdlike(q, p % q);

void main() {
  stdout.write("Masukkan dua angka: ");
  List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  print("Coprime? ${gcdlike(input[0], input[1])}");
}
