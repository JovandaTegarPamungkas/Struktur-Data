void kombinasi(String hasil, int n) {
  List<String> karakter = ['a', 'b', 'c'];

  if (hasil.length == n) {
    print(hasil);
    return;
  }

  for (int i = 0; i < karakter.length; i++) {
    kombinasi(hasil + karakter[i], n);
  }
}

void main() {
  int n = 3; // Jumlah karakter dalam kombinasi
  kombinasi("", n);
}
