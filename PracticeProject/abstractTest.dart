void main(){
  var result=Result();
  result.joy();
  result.saman();
  //var test=Test();
}

abstract class Test{
  joy();

  saman(){
    print("Hello Saman");
  }

}
class Result extends Test{
  joy(){
    print("Hello Joy");
  }
}