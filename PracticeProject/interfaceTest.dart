void main(){
  var test=Test();
  test.joy();

  var result=Result();
  result.joy();
  result.saman();
}

class Test{
  joy(){
    print("HELLO JOY");
  }
}
class Test2{
  saman(){
    print("HELLO SAMAN");
  }
}

class Result extends Test implements Test2{
  saman(){
    print("Welcome Saman to Interfaces");
  }
}