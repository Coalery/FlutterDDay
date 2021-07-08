class Car {
  int size;
  String owner;
  int velocity = 0;

  Car(this.size, this.owner);

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
  Car car = Car(100, '러리');
  car.run();
  car.stop();
}