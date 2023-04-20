///My Practice Code
void main() {
  var father = Father();
  father.putMoney(100);
  var daughter = Daughter(10);
  var son = Son(20);

  print("Father has: ${father.getMoney()} Million");
  print("Daughter has: ${daughter.getMoney()} Thousand");
  print("Son has: ${son.getMoney()} Thousand");
}

abstract class GrandFather {
  var money = 10000;
}

///Single Inheritance:
///   single parent class is Inherited by single sub-class.
class Father extends GrandFather {
  static int fMoney = 0;

  putMoney(money) {
    fMoney = money;
    fMoney += this.money;
  }

  int getMoney() => fMoney;
}

///Multi-Level Inheritance:
///   Daughter class Inherits Father which is further Inherited from
/// GrandFather allowing for multiple level of Inheritance
class Daughter extends Father {
  static int dMoney = 0;

  Daughter(int money) {
    dMoney = money;
  }
  @override
  getMoney() {
    dMoney += super.getMoney();
    return dMoney;
  }
}

///Hierarchial Inheritance:
///   Father class is Inherited by both Daughter and Son class
class Son extends Father {
  static int sMoney = 0;
  Son(money) {
    sMoney = money;
  }
  @override
  getMoney() {
    sMoney += super.getMoney();
    return sMoney;
  }
}
