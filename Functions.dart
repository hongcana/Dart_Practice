void Greetings(String name) {
  print("Hello $name, nice to meet you!");
}

// fat arrow syntax example
String Greetings2(String name) => "$name, Hello World!";

// use 'required' or using default value
String sayHi(
    {String name = 'test', required int age, required String country}) {
  return "Hello $name, you are $age, and you're from $country!";
}

// optional positional parameter = not use frequently
String Greetings3(String name, int age, [String? country = 'Japan']) {
  return "Hello $name, you are $age, and you're from $country!";
}

//QQ operator
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

void main() {
  Greetings('test');
  print(Greetings2('name'));

  // Named parameter
  // C++가 익숙하면 position parameter를 그냥 사용하는게 편하겠는걸
  // 근데 디버깅할때는 named parameter가 편하긴 하겠네
  // <클린 코드> 왈 : minimize the position parameter!

  print(sayHi(
    country: 'japan',
    age: 25,
  ));

  // optional positional parameters
  print(Greetings3('test2', 20));

  print(capitalizeName('test'));
  print(capitalizeName(null));

  String? testname;
  testname ??= 'shawn';
  testname = null;
  testname ??= 'another';
  print(testname);
}
