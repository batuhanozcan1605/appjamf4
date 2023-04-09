import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/main_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (BuildContext context) => const MainScreen()));
          },
          child: Image.asset(
            'images/logo.png',
            height: 30,
          ),
        ),
      ),
    );
  }
}
