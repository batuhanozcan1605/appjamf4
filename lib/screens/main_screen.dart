import 'package:appjamf4/models/dummy_data.dart';
import 'package:flutter/material.dart';
import '../widgets/course_grid.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Color(0xFF9A8F8F)),
          onPressed: () {

          },
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
          SliverToBoxAdapter(
            child: CourseGrid(
              title: "Oyun ve Uygulama Geliştirme Eğitimleri",
              courseList: oyunVeUygulama,
            ),
          ),
          SliverToBoxAdapter(
            child: CourseGrid(
              title: "Teknoloji Girişimciliği Eğitimleri",
              courseList: girisimcilik,
            ),
          ),
          SliverToBoxAdapter(
            child: CourseGrid(
              title: "İngilizce",
              courseList: ingilizce
            ),
          ),
        ],
      ),
    );
  }
}
