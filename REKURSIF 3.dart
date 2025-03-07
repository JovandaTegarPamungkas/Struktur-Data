int cariData(List<int> data, int target, int kiri, int kanan) {
  if (kiri > kanan) {
    return -1; 
  }

  int tengah = (kiri + kanan) ~/ 2; 

  if (data[tengah] == target) {
    return tengah; 
  } else if (data[tengah] > target) {
    return cariData(data, target, kiri, tengah - 1); 
  } else {
    return cariData(data, target, tengah + 1, kanan);
  }
}

void main() {
  List<int> angka = [2, 5, 8, 10, 14, 32, 35, 41, 67, 88, 90, 101, 109];
  int cari = 10;

  int hasil = cariData(angka, cari, 0, angka.length - 1);

  if (hasil != -1) {
    print("Data $cari ditemukan di indeks ke-$hasil");
  } else {
    print("Data $cari tidak ditemukan");
  }
}
