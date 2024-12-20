import 'package:flutter/material.dart';
import 'exams_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/image.png'),
              radius: 130,
            ),
            const SizedBox(height: 40),
            const Text(
              'StudyPal',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 90, 115, 184),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Your pocket guide ',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text('for school'),
            SizedBox(height: 80),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(340, 50),
                backgroundColor: const Color.fromARGB(255, 90, 115, 184),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExamsScreen()),
                );
              },
              child: Text(
                'Begin',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
