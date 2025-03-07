int f(int n, [int a = 0, int b = 1, int c = 1]) =>
    (n == 0) ? a : f(n - 1, b, c, 2 * b + a);

void main() {
  print(f(5));
}
