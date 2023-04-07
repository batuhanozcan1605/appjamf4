import 'package:appjamf4/models/dummy_data.dart';
import 'package:flutter/material.dart';
import '../widgets/course_grid.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

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
              title: "Google Proje Yönetim Programı",
              courseList: coursera,
            ),
          ),
        ],
      ),
    );
  }
}
