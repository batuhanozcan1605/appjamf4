import 'package:flutter/material.dart';
import '../models/course_model.dart';

class CourseGrid extends StatelessWidget {
  final String title;
  final List<Course> courseList;

  const CourseGrid({Key? key, required this.title, required this.courseList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 21.0),
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
            height: 150, //Bu responsive yapılabilir.
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
                  onTap: () => print(course.name),
                  child: Card(

                    color: Color(course.color),
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
}
