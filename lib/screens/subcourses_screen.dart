import 'package:appjamf4/models/dummy_data.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class SubCourses extends StatelessWidget
{
  final int subCourseId;

  const SubCourses({Key? key, required this.subCourseId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: CustomScrollView(
        slivers: [
          if(subCourseId==1)
          SliverToBoxAdapter(
            child: CourseGrid(
              title: "Flutter ile Uygulama Geliştirme",
              courseList: flutter,
            ),
          ),
          if(subCourseId==2)
            SliverToBoxAdapter(
              child: CourseGrid(
                title: "Unity ile Oyun Geliştirme",
                courseList: unity,
              ),
            ),
        ],
      ),
    );
  }
}
