void main() { 
  int num1 = 101; 
  int num2 = 2; 
  
  int res1 = num1 + num2; 
  print("더하기: ${res1}"); 
  
  int res2 = num1 - num2;
  print("빼기: ${res2}"); 
  
  int res3 = num1 * num2; 
  print("곱하기: ${res3}"); 
  
  // 나누기는 무조건 실수 타입으로 나와요!
  double res4 = num1 / num2;
  print("나누기: ${res4}");
}