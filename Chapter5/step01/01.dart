class Car { // 이게 클래스에요.
  int size = 0;
  String owner = '러리';
  int velocity = 0; // 속도

  void run() {
    print('${owner}이(가) 주인인 ${size} 크기의 자동차가 달립니다.');
    velocity = 100;
  }

  void stop() {
    print('${owner}이(가) 주인인 ${size} 크기의 자동차가 멈췄어요.');
    velocity = 0;
  }
}

void main() {
  Car car = Car();
  car.run();
  car.stop();

  car.size = 100;
  car.owner = '러어리이';
  car.run();
  car.stop();

  print('Car2 : ');
  Car car2 = Car();
  car2.size = 500;
  car2.owner = '누구누구';
  car2.run();
  car2.stop();

  print('Car1 : ');
  car.run();
  car.stop();
}