// 1부터 [n]까지 곱한 값을 반환해요.
int factorial(int n) {
  int result = 1;
  for(int i=1; i<=n ;i++) {
    result *= i;
  }
  return result;
}

void main() {
  int result = factorial(5);
  print(result);
}

