import 'package:flutter/material.dart';

class TeachersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Teachers',
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
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 92, 156, 209),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TeacherCard(
              name: 'Dr.Hussein ',
              image: 'assets/IMG-20240805-WA0059.jpg',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 92, 161, 218),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TeacherCard(
              name: 'Eng.Muhammad',
              image: 'assets/IMG-20240611-WA0016.jpg',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromARGB(255, 92, 158, 212),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TeacherCard(
              name: 'Eng.Rady',
              image: 'assets/IMG-20241124-WA0012.jpg',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 90, 155, 207),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TeacherCard(
              name: 'Eng.khaled ',
              image: 'assets/IMG20241124112445.jpg',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 92, 159, 218),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TeacherCard(
              name: 'Eng.mostafa',
              image: 'assets/IMG20241124105240.jpg',
            ),
          ),
        ],
      ),
    );
  }
}

class TeacherCard extends StatelessWidget {
  final String name;
  final String image;

  TeacherCard({required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 25,
        ),
        title: Text(name),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.call, color: Colors.green),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.email, color: Colors.blue),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
