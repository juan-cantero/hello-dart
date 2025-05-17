class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}

main() {
  var list = [1, 2, 3];
  print(list);

  List<String> villanos = ['lex', 'red', 'robin'];
  villanos.add('joker');

  print(villanos);

  // sets

  var villanos2 = {'lex', 'red', 'robin'};
  villanos2.add('joker');
  print(villanos2);

  var villanos3 = <String>{};
  villanos3.add('joker');
  print(villanos3);

  Set<String> villanos4 = {};
  villanos4.add('joker');
  print(villanos4);

  //maps

  Map<String, int> villanos5 = {};
  villanos5['lex'] = 1;
  villanos5['red'] = 2;
  villanos5['robin'] = 3;
  villanos5['joker'] = 4;
  print(villanos5);

  Map<String, String> villanos6 = {
    'lex': '1',
    'red': '2',
    'robin': '3',
    'joker': '4',
  };
  print(villanos6);

  exercises();
}

void exercises() {
  //list
  //1
  List<String> fruits = [
    'apple',
    'banana',
    'orange',
    'grape',
    'kiwi',
    'banana',
  ];
  print(fruits.first);
  print(fruits.last);
  fruits.insert(0, 'mango');
  print(fruits);

  //2

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  print(evenNumbers);

  List<int> doubledNumbers = numbers.map((number) => number * 2).toList();
  print(doubledNumbers);

  //3

  List<bool> booleans = [true, false, true, true, false];
  print(booleans.isEmpty);
  print(booleans.length);
  print(booleans.contains(false));
  print(booleans.every((element) => element == true));

  //4

  List<int> numbers2 = [10, 20, 30, 40, 50];
  numbers2.map((number) => number + 5).forEach(print);

  numbers2[2] = 35;

  //5
  print(fruits.indexOf('banana'));
  print(fruits.lastIndexOf('banana'));

  // SETS
  Set<int> numbs = {1, 2, 3, 4, 5};
  print(numbs);
  numbs.add(6);
  numbs.remove(3);
  print(numbs);

  Set<String> colors = {'green', 'blue', 'red'};
  print(colors.contains('blue'));

  Set<int> g1 = {1, 2, 3};
  Set<int> g2 = {3, 4, 5};

  print(g1.union(g2));
  print(g1.intersection(g2));
  print(g1.difference(g2));

  for (int element in g1) {
    print(element);
  }

  for (var element in colors) {
    print(element);
  }

  //Maps

  Map<String, Person> people;

  people = {
    'Pedro': new Person(name: 'Pedro', age: 20),
    'alice': new Person(name: 'Alice', age: 30),
    'bob': new Person(name: 'Bob', age: 25),
  };

  print(people);

  print(people['Pedro']?.age);

  people['juan'] = new Person(name: 'Juan', age: 40);
  print(people);

  people.forEach((key, value) => print('${key} ${value.name} ${value.age}'));

  people.forEach((key, value) {
    print('NAME: ${value.name}');
    print('AGE: ${value.age}');
  });
}
