import 'package:flutter/material.dart';
import 'package:student_app/aboutScreen.dart';

class StudentApp extends StatefulWidget {
  const StudentApp({Key? key}) : super(key: key);

  @override
  _StudentAppState createState() => _StudentAppState();
}

class _StudentAppState extends State<StudentApp> {
  bool showStudentDetails = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 168, 54),
        title: const Text(
          "Student App",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Toggle button text
                showStudentDetails = !showStudentDetails;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text(
              showStudentDetails ? "Student Details: Annet Balinabyo, Age: 20, Grade: A" : "Show Details",
              style: const TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Student Details:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen(
                    name: "Annet Balinabyo",
                    studentNumber: 222020,
                    emailAddress: "annetbalinabyo@gmail.com",
                  )),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 244, 168, 54),
              ),
              child: const Text('About', 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}