import 'package:flutter/material.dart';
import './weekly_progress_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              SizedBox(height: 80),
              // First row: Welcome text
            
               
             Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome to\nEnglish with Palak!',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],),
              const SizedBox(height: 16),
              // Second row: subtitle and avatar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "You're now part of a structured journey to master spoken English – powered by AI + real educator guidance.",
                      style: TextStyle(fontSize: 22, color: Colors.black87),
                    ),
                  ),
                  const SizedBox(width: 12),
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/44.jpg'),
                    backgroundColor: Colors.grey[200], // optional fallback color
                  ),
                ],
              ),
              // Mascot illustration
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 400,
                      width: 400,
                      child: Image.asset(
                        'assets/images/cutton_icons.png',
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Text('Image not found'); // Fallback
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
              // Start Lesson Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFED7D2B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WeeklyProgressScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Start Your First Lesson',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}