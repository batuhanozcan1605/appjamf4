import 'package:appjamf4/models/course_model.dart';
import 'package:appjamf4/models/module_model.dart';
import 'package:appjamf4/screens/screens.dart';
import 'package:appjamf4/widgets/custom_appbar.dart';
import 'package:appjamf4/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModulesScreen extends StatelessWidget {
  final String title;
  final List<Module>? moduleList;

  const ModulesScreen({Key? key, required this.title, this.moduleList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(screenSize.width, 50),
        child: const CustomAppBar(),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Flexible(
              flex: 1,
              child: Container(
                clipBehavior: Clip.none,
                decoration: const BoxDecoration(
                  color: Color(0xF7F8F8F8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28.0),
                    topRight: Radius.circular(28.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF707070)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 6,
                child: NestedModuleScroll(moduleList: moduleList,),
              ),
          ],
        ),
      ),
    );
  }
}
