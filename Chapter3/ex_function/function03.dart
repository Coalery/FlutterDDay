// [number]의 길이가 [length]보다 작다면, 그 차이만큼 0을 채워서 반환합니다.
String formatNumber(int number, int length) {
  String result = number.toString();
  String addition = '';

  for(int i=0; i<length - result.length; i++) {
    addition += '0';
  }

  return addition + result;
}

// 매개변수의 날짜를 yyyy. MM. dd. 형식으로 포맷해서 반환합니다.
String formatDate(int year, int month, int day) {
  String formattedMonth = formatNumber(month, 2);
  String formattedDay = formatNumber(day, 2);

  return '${year}. ${formattedMonth}. ${formattedDay}.';
}

void main() {
  print(formatDate(2021, 4, 2));
  print(formatDate(2021, 7, 9));
  print(formatDate(2021, 11, 21));
}

