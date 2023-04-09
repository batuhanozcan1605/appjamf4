import 'package:appjamf4/models/question_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repository/question_repo.dart';

class NewQuestion extends ConsumerWidget {
  const NewQuestion({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questionsRepo = ref.watch(questionsProvider);
    TextEditingController controller = TextEditingController();
    TextEditingController controller2 = TextEditingController();

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Yeni Soru',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 22,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w700,
            ),
            softWrap: false,
          ),
          Column(
            children: [
             const Text(
                'Başlık veya özet',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 8.0),
                child: TextField(
                  controller: controller,
                ),
              ),
            ],
          ),

          Column(
            children: [
              const Text(
                'Ayrıntılar',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 16,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
                softWrap: false,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0, vertical: 8),
                child: TextField(
                  controller: controller2,
                ),
              ),
            ],
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF9A8F8F),
            ),
              onPressed: (){
              Question question = Question(title: controller.text, description: controller2.text, username: "Admin", plus: 0, comment: 0);
              ref.read(questionsProvider).addQuestion(question);
              Navigator.pop(context);
              },
              child: const Text("YAYINLA")
          )
        ],
      ),
    );
  }
}
