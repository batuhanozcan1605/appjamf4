class Module {
  final String name;
  final List<Lesson> lesson;

  Module({required this.name, required this.lesson});
}

class Lesson {
  final String name;
  final int? fireId;

  Lesson({required this.name, this.fireId});
}