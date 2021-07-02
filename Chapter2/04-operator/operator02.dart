void main() { 
  int num1 = 101; 
  int num2 = 2; 
  
  int res1 = num1 ~/ num2; 
  print("나누기(정수): ${res1}"); 
  
  int res2 = num1%num2; 
  print("나머지: ${res2}"); 
  
  num1++;
  print("증가: ${num1}"); 
  
  num2--; 
  print("감소: ${num2}");
}