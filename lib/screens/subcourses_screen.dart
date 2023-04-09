import 'package:appjamf4/models/dummy_data.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/widgets.dart';


class SubCourses extends StatelessWidget
{
  final int subCourseId;

  const SubCourses({Key? key, required this.subCourseId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(screenSize.width, 50),
        child: const CustomAppBar(),),
      body: CustomScrollView(
        slivers: [
          if(subCourseId==1)
          SliverToBoxAdapter(
            child: CourseGrid(
              height: 150,
              title: "Flutter ile Uygulama Geliştirme",
              courseList: flutter,
            ),
          ),
          if(subCourseId==2)
            SliverToBoxAdapter(
              child: CourseGrid(
                height: 150,
                title: "Unity ile Oyun Geliştirme",
                courseList: unity,
              ),
            ),
        ],
      ),
    );
  }
}
