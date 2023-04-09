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
          icon: const Icon(Icons.menu, color: Color(0xFF9A8F8F)),
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
          const SliverPadding(padding: const EdgeInsets.only(top: 8.0),),
          SliverToBoxAdapter(
            child: CourseGrid(
              height: 150,
              title: "Oyun ve Uygulama Geliştirme Eğitimleri",
              courseList: oyunVeUygulama,
            ),
          ),
          SliverToBoxAdapter(
            child: CourseGrid(
              height: 300,
              title: "Teknoloji Girişimciliği Eğitimleri",
              courseList: girisimcilik,
            ),
          ),
          SliverToBoxAdapter(
            child: CourseGrid(
              height: 150,
              title: "İngilizce",
              courseList: ingilizce
            ),
          ),
        ],
      ),
    );
  }
}
