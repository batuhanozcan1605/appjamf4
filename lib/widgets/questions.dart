import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {

  //final _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    //CollectionReference lessonRef = _firestore.collection('f2m4l1');
  }

  @override
  Widget build(BuildContext context) {
    //8CollectionReference lessonRef = _firestore.collection('f2m4l1');
    //var questionRef = lessonRef.doc('Gj04ltB7GR7KrXBqe7QT');

    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF707070),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("", style: TextStyle(
                color:Color(0xFF707070),
                fontWeight: FontWeight.bold
              ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Flexible(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultrices, dui sed sodales tempor, nisi leo lobortis velit, vel rhoncus tellus tellus ac enim. Fusce convallisjusto a convallis consequat. Class aptent taciti sociosqu")),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text("Username -"),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("timestamp"),
                ),
              ],
            ),
            InteractionRow(),
          ],
        ),
      ],
    );
  }
}

class InteractionRow extends StatelessWidget {
  const InteractionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(

          children: [
            Text("3"),
            IconButton(
                onPressed: (){

                 },
                icon: Icon(Icons.add_circle, color: Color(0xFF707070),))
          ],
        ),
        Row(
          children: [
            Text("2"),
            IconButton(
                onPressed: (){

                },
                icon: Icon(Icons.mode_comment_rounded, color: Color(0xFF707070),))
          ],

        )
      ],
    );
  }
}
