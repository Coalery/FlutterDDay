int sum(List<int> list) {
  // 몰라도 되는 구문이에요! 그냥 리스트의 합을 구해준다 정도만 알면 돼요.
  return list.reduce((value, element) => value + element);
}

void main() {
  List<int> list1 = [1, 4, 2, 3];
  print(list1[0]); // 1
  print(list1[1]); // 4
  print(list1[2]); // 2

  int sum1 = sum(list1);
  print(sum1); // 1 + 4 + 2 + 3 = 10

  int sum2 = sum([1, 2, 3, 4, 5]);
  print(sum2); // 1 + 2 + 3 + 4 + 5 = 15

  print(list1.length); // 4
  // 리스트의 길이를 구하는 방법이에요.

                           // (value) { return value * 2; } 와 똑같아요.
  List<int> list2 = list1.map((value) => value * 2).toList();
  // 'list1'의 모든 요소에 2를 곱한 리스트를 새로 만들어요.
  print(list2); // [2, 8, 4, 6]
  print(sum(list2)); // 2 + 8 + 4 + 6 = 20

  List<String> list3 = list1.map((value) { return '${value}분'; }).toList();
  print(list3);
}