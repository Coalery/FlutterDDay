void main() {
  int v1 = 10;
  int v2 = -5;
   
  int absolute_v1 = v1 < 0 ? -1 * v1 : v1;
  int absolute_v2 = v2 * (v2 < 0 ? -1 : 1);

  print(absolute_v1);
  print(absolute_v2);
}

