void main(){
  var result=Result();
  result.joy();
  result.saman();
}

mixin Test{
  joy(){
    print("HELLO JOY");
  }
}

mixin Test2{
  saman(){
    print("HELLO SAMAN");
  }
}

class Result with Test,Test2{
}