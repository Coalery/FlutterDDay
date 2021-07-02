int add(int? a, int? b) {
  a = a ?? 5; // a ??= 5;
  b ??= 10;
  return a + b;
}

void main() {
  print(add(null, 5));
  print(add(30, 50));
}