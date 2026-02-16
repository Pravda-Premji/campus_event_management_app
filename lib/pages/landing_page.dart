import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001B44),

      appBar: AppBar(
        backgroundColor: const Color(0xFF001B44),
        elevation: 0,
        title: const Text("ABC College"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text("LOGIN",
                style: TextStyle(color: Colors.white, fontSize: 16)),
          )
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 20),

            // 🔹 COLLEGE NAME
            const Text(
              "ABC College of Engineering",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 15),

            // 🔹 DESCRIPTION
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Welcome to ABC College Campus Event Management System. "
                "This platform helps students explore events, register easily, "
                "and stay updated with all campus activities.",
                style: TextStyle(color: Colors.white70, fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 25),

            // 🔹 IMAGE SLIDER / PHOTOS
            SizedBox(
              height: 200,
              child: PageView(
                children: [
                  Image.network(
                    "https://lbt.ac.in/wp-content/uploads/2019/06/lbt_front_view.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    "https://image-static.collegedunia.com/public/college_data/images/campusimage/1452686668sa.jpg",
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    "https://images.unsplash.com/photo-1509062522246-3755977927d7",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // 🔹 GET STARTED BUTTON
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text(
                "GET STARTED",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
