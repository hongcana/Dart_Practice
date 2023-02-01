enum Team { Bears, Twins }
class Human {
  final String name;
  Human({required this.name});

  void sayHi() {
    print("Hi, my name is $name");
  }
}

// Mixin class Don't have constructor
class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("RUNNNNNNNNN!");
  }
}

class Tall {
  final double height = 180;
}

// using inheritance(extends) and Mixin(with)
class Player extends Human with Strong, QuickRunner, Tall {
  final Team team;

  // using 'super' keywords
  Player({
    required this.team,
    required String name,
  }) : super(name: name);
}

void main() {
  var player = Player(team: Team.Bears, name: 'Kim')..sayHi();
}
