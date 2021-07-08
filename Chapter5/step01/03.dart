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

class Truck extends Car {
  Truck(int size, String owner) : super(size, owner);

  void whatisit() {
    print('이건 ${owner}이(가) 주인인 트럭이에요.');
  }
}

void main() {
  Truck truck = Truck(1000, '러리');
  truck.whatisit();
  truck.run();
  truck.stop();
}