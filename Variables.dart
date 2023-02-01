// always have main method

void main() {
  // using var or explicit type
  // dart style guide advice using var in local variable
  String name = 'shawn';
  name = 'shawwwwwn';

  // dynamic type variable
  // dynamic은 정말 필요할 때만 쓰자
  // var를 많이 사용하고, 명시적 타입 변수는 class property 만들 때 사용하자.
  var free1;
  dynamic free2;

  // null safety
  // 어떤 변수가 null이 될 수 있음을 명시하는 기능
  // help developer NOT reference null values
  String? shawn = 'shawn';
  shawn = null; // compiler knows 'shawn' could be null
  if (shawn != null) {
    shawn.isNotEmpty;
  }
  shawn?.isNotEmpty;

  // Final variables
  // same as conse in typescript
  // 다시는 변수의 값을 바꾸지 못한다.
  final name2 = 'me';

  // Late Variables
  // Late는 초기 데이터 할당 없이 변수를 선언할 수 있게 해줌
  late final String name3;
  // do something, go to API
  // print(name3) <- 값을 할당하기 전에 접근 금지를 컴파일러가 알아채줌
  // flutter로 data fetching을 할 때 유용하다.
  name3 = 'final value';
  // make late variables -> API requests -> assign value in variables

  // Const Variables
  // not the same as 'const' keyword in javascript
  // compile-time constant : 컴파일 할 때 알고있는 값을 고정적으로 사용할 때!
  // 어떤 값인지 모르고, 유저가 입력해야하는 값이라면 final, var로 선언해야 함
  // const vs final을 항상 유념하자
  // app에서 사용할 상수에는 const를 사용한다.

  const name4 = 'shawn';
  name = 'shawn2';

}
