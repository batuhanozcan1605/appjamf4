import 'package:appjamf4/models/module_model.dart';
import 'package:flutter/material.dart';

class NestedModuleScroll extends StatelessWidget {
  final List<Module> moduleList;
  const NestedModuleScroll({super.key, required this.moduleList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[

          ];
        },
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: const Color(0xF7F8F8F8),
              child: ExpansionTile(
                children: [
                  ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          height: 30,
                          child: ListTile(
                            title: Text('Item $index'),
                          ),
                        );
                  }
                  ),
                ],
                title: Text(moduleList[index].name),
              ),
            );
          },
          itemCount: moduleList.length,
        ),
      ),
    );
  }
}