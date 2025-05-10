import 'package:flutter/material.dart';
class LessonPath extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("215 words spoken • 3-day streak"),
        SizedBox(height: 20),
        LessonItem(title: "Lesson 3", subtitle: "Live session", actionText: "Join Class"),
        LessonItem(title: "Lesson 4", subtitle: "AI Practice", icon: Icons.smart_toy),
        LockedLesson(title: "Lesson 5"),
      ],
    );
  }
}

class LessonItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? actionText;
  final IconData? icon;

  const LessonItem({required this.title, required this.subtitle, this.actionText, this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon != null
          ? Icon(icon, color: Colors.orange)
          : CircleAvatar(backgroundImage: AssetImage("assets/teacher.png")),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: actionText != null ? ElevatedButton(onPressed: () {}, child: Text(actionText!)) : null,
    );
  }
}

class LockedLesson extends StatelessWidget {
  final String title;

  const LockedLesson({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.lock, color: Colors.grey),
      title: Text(title),
    );
  }
}