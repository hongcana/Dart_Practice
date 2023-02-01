// blueprint 용도 = abstract class
abstract class Student {
  void study();
}

// enum = css color set처럼 사용하면 편할듯
enum Team { Bears, Twins, Giants, Lions }

class Player extends Student {
  String name;
  Team team;
  int xp, age;

  // Player.fromJson(Map<String, dynamic> playerJson)
  //     : name = playerJson['name'],
  //       age = playerJson['age'],
  //       xp = playerJson['xp'],
  //       team = playerJson['team'];

  // how to make constructor simpliy with Dart's Named Parameter?
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  // Named Constructors example :
  Player.createTwinsPlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = Team.Twins,
        this.xp = 0;

  Player.createGiantsPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = Team.Giants,
        this.xp = 0;

  void sayHi() {
    print("Hi~ my name is $name");
  }

  void study() {
    print("I'm studying Hard..");
  }
}

class Freshman extends Student {
  void study() {
    print('I\'m going to drink');
  }
}

void main() {
  var player = Player(
    name: "Kim",
    xp: 120,
    team: Team.Bears,
    age: 23,
  );

  var TwinsPlayer = Player.createTwinsPlayer(
    name: "Lee",
    age: 24,
  );
  var GiantsPlayer = Player.createGiantsPlayer(
    "Lee",
    25,
  );

  player.sayHi();
  print(player);

  var Jeong = Player(name: 'Jeong', xp: 1200, team: Team.Twins, age: 26);
  var foo = Jeong
    ..name = 'jjeong'
    ..xp = 1020
    ..team = Team.Lions
    ..sayHi()
    ..study();

  var fresh1 = Freshman()..study();
}
