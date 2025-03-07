void main() {
  int n = 6; // Jumlah baris segitiga Pascal

  for (int i = 0; i < n; i++) {
    List<int> row = []; // List untuk menyimpan setiap baris Pascal
    for (int j = 0; j <= i; j++) {
      row.add(factorial(i) ~/ (factorial(j) * factorial(i - j)));
    }
    print(row);
  }
}

// Fungsi untuk menghitung faktorial
int factorial(int num) {
  if (num == 0 || num == 1) {
    return 1;
  }
  return num * factorial(num - 1);
}
