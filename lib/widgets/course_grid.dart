import 'package:appjamf4/models/dummy_data.dart';
import 'package:flutter/material.dart';
import '../models/course_model.dart';
import '../screens/screens.dart';

class CourseGrid extends StatelessWidget {
  final String title;
  final List<Course> courseList;
  final double height;

  const CourseGrid({Key? key, required this.title, required this.courseList, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFF707070),
                fontSize: 20.0,
                fontWeight: FontWeight.normal,
                fontFamily: 'Segoe UI',
              ),
            ),
          ),
          SizedBox(
            height: height,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
              ),
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                  vertical: 12.0, horizontal: 16.0),
              itemCount: courseList.length,
              itemBuilder: (BuildContext context, int index) {
                final Course course = courseList[index];
                return GestureDetector(
                  onTap: () => navigateSubCoursesOrModules(context, course.subCourseId, course.name, course.modulelist),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    color: Color(course.color),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(course.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //buraya text içinde course.name gelecek.
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
  void navigateSubCoursesOrModules(context, subCourseId, title, moduleList) {
    if(courseList == oyunVeUygulama) {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => SubCourses(subCourseId: subCourseId,)));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => ModulesScreen(title: title, moduleList: moduleList,)));
    }
  }
}
