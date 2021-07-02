void main() {  
  int a = 10; 
  int b = 12;

  bool res = (a < b) && (b > 10); 
  print(res);

  res = (a > b) || (b < 10);
  print(res);

  res = !(a==b);
  print(res);
}