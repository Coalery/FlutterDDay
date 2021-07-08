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
  final int limitedWeight;
  int loadWeight = 0;

  Truck(int size, String owner, this.limitedWeight) : super(size, owner);

  void lade(int weight) {
    if(loadWeight + weight > limitedWeight) {
      print('${owner}이(가) 주인인 트럭에는 ${limitedWeight}kg 만큼의 짐만 실을 수 있어요!');
      return;
    }
    print('${owner}이(가) 주인인 트럭에 ${weight}kg의 짐을 실었어요.');
    loadWeight += weight;
  }

  void unlade(int weight) {
    if(loadWeight - weight < 0) {
      print('${owner}이(가) 주인인 트럭에는 ${weight}kg 만큼의 짐이 없어요.');
      return;
    }
    print('${owner}이(가) 주인인 트럭에 ${weight}kg의 짐을 뺐어요.');
    loadWeight -= weight;
  }
}

class Bus extends Car {
  final int limiedPassengerCount;
  int passengerCount = 0; // 승객 수

  Bus(int size, String owner, this.limiedPassengerCount) : super(size, owner);

  void mount() {
    if(passengerCount + 1 > limiedPassengerCount) {
      print('${owner}이(가) 주인인 버스가 꽉 차서, 승객이 탈 수 없어요.');
      return;
    }
    passengerCount++;
    print('${owner}이(가) 주인인 버스에 승객이 타서, 지금 ${passengerCount}명이 타고 있어요.');
  }

  void dismount() {
    if(passengerCount - 1 < 0) {
      print('${owner}이(가) 주인인 버스에는 내릴 승객이 없어요.');
      return;
    }
    passengerCount--;
    print('${owner}이(가) 주인인 버스에 승객이 내려서, 지금 ${passengerCount}명이 타고 있어요.');
  }
}

void main() {
  Truck truck = Truck(3000, '러리', 10000);
  truck.lade(5000);
  truck.lade(3000);
  truck.lade(3000); // Can't lade.

  truck.unlade(7500);
  truck.unlade(2000); // Can't unlade.

  Bus bus = Bus(4000, '러어리이', 4);
  bus.mount();
  bus.mount();
  bus.mount();
  bus.mount();
  bus.mount(); // Can't mount.

  bus.dismount();
  bus.dismount();
  bus.dismount();
  bus.dismount();
  bus.dismount(); // Can't dismount.
}