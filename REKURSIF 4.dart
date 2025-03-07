void hanoi(int n, String asal, String tujuan, String bantu) {
  if (n == 1) {
    print("Pindahkan disk $n dari pasak $asal ke pasak $tujuan");
    return;
  }

  // Pindahkan n-1 disk dari asal ke bantu
  hanoi(n - 1, asal, bantu, tujuan);

  // Pindahkan disk ke-n dari asal ke tujuan
  print("Pindahkan disk $n dari pasak $asal ke pasak $tujuan");

  // Pindahkan n-1 disk dari bantu ke tujuan
  hanoi(n - 1, bantu, tujuan, asal);
}

void main() {
  int jumlahDisk = 3;
  hanoi(jumlahDisk, "A", "C", "B");
}
