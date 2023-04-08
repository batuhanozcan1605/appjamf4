import 'module_model.dart';

class Course{
  final String name;
  final int color;
  final List<Module>? modulelist;
  final int? subCourseId;
  //final List<Module> modulList;

  const Course({required this.name, required this.color, this.modulelist, this.subCourseId});

}

