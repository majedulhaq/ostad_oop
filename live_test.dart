abstract class computer {
  String name;
  int model;
  int year;

  computer({
    required this.name,
    required this.model,
    required this.year,
  });
}

class hp extends computer {
  hp({
    required int model,
    required int year,
  }) : super(
          name: 'hp',
          model: model,
          year: year,
        );

  void startComp() {
    print(
        'this is name of my  ${name} laptop and its model  ${model} and it is launched on ${year} ');
  }
}

main() {
  hp myComp = hp(model: 4500, year: 2012);
  myComp.startComp();
}
