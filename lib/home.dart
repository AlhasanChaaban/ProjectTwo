import 'package:flutter/material.dart';
import 'package:quizquest/gamescreen.dart';
import 'verify.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Container(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  'QuizQuest',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Image.asset(
                    'timer.png',
                    width: 400,
                    height: 400,
                  ),
                ),
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    print('Starting Game');
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Quiz()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    backgroundColor: Colors.amberAccent,
                  ),
                  child: const Text('START GAME', style: TextStyle(fontSize: 17)),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VerifyPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: const Text('ADMIN', style: TextStyle(fontSize: 17, color: Colors.amberAccent)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
