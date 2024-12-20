import 'dart:ui';

import 'package:flutter/material.dart';
import 'teachers_screen.dart';

class ExamsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Exams',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 90, 115, 184),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/IMG20241124105240.jpg'),
            ),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ExamCard(
            title: 'Dr.Hussein',
            subject: 'computer sciece',
            date: 'January 12, 2024',
            location: 'Class 3B',
            imageUrl:
                'assets/IMG_٢٠٢٢٠٨٠٣_٠٥٠٥٣٠.jpg', // Replace with your image path
          ),
          SizedBox(height: 20),
          ExamCard(
            title: 'Eng.Rady',
            subject: 'Flutter Developar',
            date: 'February 2, 2022',
            location: 'Online',
            imageUrl:
                'assets/IMG_٢٠٢٢٠٨٠٣_٠٥٠٥٠٦.jpg', // Replace with your image path
          ),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 90, 115, 184)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TeachersScreen()),
              );
            },
            child: Text(
              'Sign up for another exam',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExamCard extends StatelessWidget {
  final String title, subject, date, location;
  final String imageUrl; // Added field for image URL

  ExamCard({
    required this.title,
    required this.subject,
    required this.date,
    required this.location,
    required this.imageUrl, // Required for image
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 90, 115, 184),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left container for image (optional)
            if (imageUrl.isNotEmpty) // Check if image URL is provided
              Container(
                width: 100,
                height: 160,
                margin: EdgeInsets.only(right: 16), // Add margin for spacing
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(imageUrl), // Load image from assets
                    fit: BoxFit.cover, // Adjust image fit as needed
                  ),
                ),
              ),

            // Content container
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(subject, style: TextStyle(color: Colors.white)),
                  SizedBox(height: 5),
                  Text(
                    date,
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(location, style: TextStyle(color: Colors.white)),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
