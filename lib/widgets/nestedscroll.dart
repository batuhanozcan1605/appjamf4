import 'package:flutter/material.dart';

class NestedModuleScroll extends StatelessWidget {
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
                title: Text('List item $index'),
              ),
            );
          },
          itemCount: 25,
        ),
      ),
    );
  }
}