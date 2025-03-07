int square(int n, [int result = 0]) =>
    (n == 0) ? result : square(n - 1, result + 2 * n - 1);

void main() {
  print(square(5));   // Output: 25
  print(square(10));  // Output: 100
}
