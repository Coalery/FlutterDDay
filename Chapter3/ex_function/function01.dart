void log(String tag, String message) {
  print('${tag} : ${message}');
}

void main() {
  log('ERROR', '뭔가 문제가 생긴거같은데요?');
  log('INFO', '평범해요');
}

