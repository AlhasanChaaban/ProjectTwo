import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final TextEditingController _questionController = TextEditingController();
  final TextEditingController _answer1Controller = TextEditingController();
  final TextEditingController _answer2Controller = TextEditingController();
  final TextEditingController _correctAnswerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _questionController,
              decoration: const InputDecoration(
                labelText: 'Question',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _answer1Controller,
              decoration: const InputDecoration(
                labelText: 'Answer 1',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _answer2Controller,
              decoration: const InputDecoration(
                labelText: 'Answer 2',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _correctAnswerController,
              decoration: const InputDecoration(
                labelText: 'Correct Answer',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _insertQuestion();
              },
              child: const Text('Insert Question'),
            ),
          ],
        ),
      ),
    );
  }

  void _insertQuestion() {
    // Retrieve values from text controllers
    String question = _questionController.text;
    String answer1 = _answer1Controller.text;
    String answer2 = _answer2Controller.text;
    String correctAnswer = _correctAnswerController.text;

    _questionController.clear();
    _answer1Controller.clear();
    _answer2Controller.clear();
    _correctAnswerController.clear();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Question Inserted'),
          content: const Text('The question has been successfully inserted.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
