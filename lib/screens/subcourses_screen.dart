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
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Color(0xFF9A8F8F),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Color(0xFF9A8F8F),),
            onPressed: () {

            },
          ),
        ],
        title: Center(
          child: GestureDetector(
            onTap: (){

            },
            child: Image.asset(
              'images/logo.png',
              height: 30,
            ),
          ),
        ),
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
