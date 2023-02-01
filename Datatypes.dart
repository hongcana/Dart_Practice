void main() {
  String name = 'me';
  bool alive = true;
  double usdkrw = 1234.34;
  var NaN = double.nan;

  // Lists
  var numbers = [1, 2, 3, 4];
  List<int> numbers2 = [1, 2, 3, 4];
  var numbers3 = [1, 'test', 2, 3];
  // numbers.first;
  // numbers.last;
  print(numbers3[2]);

  // collection if -> nav bar 로그인 유무 체크에 좋음
  var giveMeFour = true;
  var test2 = [1, 2, 3, 4, if (giveMeFour) 5];
  print(test2);

  // string interpolation
  // text에 변수를 추가하는 방법, using in Flutter
  // using money sign + variable name
  var name22 = 'shawn';
  var age = 25;

  var greeting = 'hello, my name is $name22, and I\'m ${age + 3}';
  var greeting2 = "Good morning, $name22!";
  print(greeting);
  print(greeting2);

  // collection for
  var oldLists = ['jax', 'lee'];
  var newLists = [
    'lusi',
    'david',
    'max',
    'kate',
    for (var friend in oldLists) "hi $friend!!",
  ];
  print(newLists);

  // Maps in Dart
  // dictionary on the Python
  var players = {
    'name': 'test bot',
    'xp': 620,
    'power': false,
    // String : any
  };
  //key와 value의 자료형을 지정해줄 수도 있다.
  Map<int, bool> emptymap = {
    1: true,
    2: false,
    3: true,
  };
  // Key-value 구조 + API로 얻는 구조는 class를 활용해보자.

  // Set
  var numbers4 = {
    1,
    2,
    3,
    4,
  };
  // Set는 원소 중복 불가, 유니크하다~

}
