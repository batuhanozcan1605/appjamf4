import 'package:appjamf4/models/module_model.dart';
import 'package:appjamf4/screens/questions_screen.dart';
import 'package:flutter/material.dart';

import '../screens/open_question_screen.dart';

class NestedModuleScroll extends StatelessWidget {
  final List<Module>? moduleList;
  const NestedModuleScroll({super.key, required this.moduleList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[

          ];
        },
        body: moduleList != null ? ListView.builder(
          itemCount: moduleList!.length,
          itemBuilder: (BuildContext context, int index) {
            Module module = moduleList![index];
            return Container(
              color: const Color(0xF7F8F8F8),
              child: ExpansionTile(
                title: Text(moduleList![index].name),
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: module.lessonList.length,
                      itemBuilder: (BuildContext context, int index){
                      var questionList = module.lessonList[index].questionList;
                        return GestureDetector(
                          onTap: (){
                            if(module.lessonList[index].questionList == null) {
                              print("closed");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          QuestionsScreen(
                                            questionList: questionList,
                                            lessonName: module.lessonList[index]
                                                .name,)));
                            } else {
                              print("open");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          OpenQuestionScreen()));
                            }
                            },
                          child: ListTile(
                            leading: const Icon(Icons.mode_comment_rounded, color: Colors.green,),
                            trailing: const Icon(Icons.arrow_forward_ios_rounded),
                            title: Text(module.lessonList[index].name),
                          ),
                        );
                  }
                  ),
                ],
              ),
            );
          },
        ) : ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Gelecek Modül $index'),
            );
          },
          itemCount: 20,
        ),
      ),
    );

  }
}