import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class WeeklyProgressScreen extends StatelessWidget {
  const WeeklyProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Weekly Progress Header
              Container(
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  gradient: LinearGradient(
                    colors: [const Color.fromARGB(255, 135, 89, 166), Colors.blue[600]!],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Weekly progress',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: const Text(
                                '0%',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50.0),
                        const Text(
                          'Learn to speak 3000\nuseful English words\n in this course!',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          children: [
                            const Text(
                              'About this Course',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 4.0),
                            const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: 0,
                      right: -10,
                      child: Image.asset(
                        'assets/images/cutton_icons.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 0,
                      right: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: LinearProgressIndicator(
                          value: 0.0,
                          backgroundColor: Colors.white.withOpacity(0.3),
                          valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                          minHeight: 8.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Stats Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      '215 words spoken',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 16.0),
                    Container(
                      width: 2,
                      height: 16,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 16.0),
                    const Text(
                      '3-day streak',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
             ),

              // Roadmap Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Column(
                  children: [
                    RoadmapItem(
                      lessonNumber: 1,
                      lessonTitle: 'Lesson 3',
                      lessonType: 'Live session',
                      isCompleted: false,
                      isLocked: false,
                      hasFox: false,
                      buttonText: 'Join Class',
                      onTap: () {},
                    ),
                    RoadmapItem(
                      lessonNumber: 2,
                      lessonTitle: 'Lesson 4',
                      lessonType: 'AI Practice',
                      isCompleted: false,
                      isLocked: false,
                      hasFox: true,
                      buttonText: 'Let\'s practice now',
                      onTap: () {},
                    ),
                    RoadmapItem(
                      lessonNumber: 3,
                      lessonTitle: 'Lesson 5',
                      lessonType: '',
                      isCompleted: false,
                      isLocked: true,
                      hasFox: false,
                      buttonText: '',
                      onTap: () {},
                    ),
                    RoadmapItem(
                      lessonNumber: 4,
                      lessonTitle: 'Introduction',
                      lessonType: '',
                      isCompleted: true,
                      isLocked: false,
                      hasFox: false,
                      buttonText: '',
                      onTap: () {},
                    ),
                    RoadmapItem(
                      lessonNumber: 5,
                      lessonTitle: 'Lesson 1',
                      lessonType: 'Greetings',
                      isCompleted: false,
                      isLocked: false,
                      hasFox: false,
                      buttonText: 'Join Live Course',
                      onTap: () {},
                    ),
                    RoadmapItem(
                      lessonNumber: 6,
                      lessonTitle: 'Lesson 2',
                      lessonType: 'Live session',
                      isCompleted: false,
                      isLocked: false,
                      hasFox: true,
                      buttonText: '',
                      onTap: () {},
                    ),
                    RoadmapItem(
                      lessonNumber: 7,
                      lessonTitle: 'Lesson 5',
                      lessonType: 'AI Practice',
                      isCompleted: false,
                      isLocked: true,
                      hasFox: false,
                      buttonText: 'Join Next Session',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoadmapItem extends StatelessWidget {
  final int lessonNumber;
  final String lessonTitle;
  final String lessonType;
  final bool isCompleted;
  final bool isLocked;
  final bool hasFox;
  final String buttonText;
  final VoidCallback onTap;

  const RoadmapItem({
    super.key,
    required this.lessonNumber,
    required this.lessonTitle,
    required this.lessonType,
    required this.isCompleted,
    required this.isLocked,
    required this.hasFox,
    required this.buttonText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isCompleted ? Colors.green : Colors.grey[300],
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: isCompleted
                    ? const Icon(Icons.check, size: 16, color: Colors.white)
                    : Text(
                        lessonNumber.toString(),
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
              ),
            ),
            if (lessonNumber != 7)
              CustomPaint(
                size: const Size(24, 80), // Increased height for better curve visibility
                painter: CurvedLinePainter(),
              ),
          ],
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (hasFox)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    'assets/images/cutton_icons.png',
                    width: 40,
                    height: 40,
                  ),
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lessonTitle,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    if (lessonType.isNotEmpty)
                      Text(
                        lessonType,
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                    if (buttonText.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: ElevatedButton(
                          onPressed: isLocked ? null : onTap,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: buttonText == "Let's practice now"
                                ? Colors.blue[800]
                                : Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          child: Text(
                            buttonText,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              if (isLocked)
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.lock, color: Colors.grey),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class CurvedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey[400]!
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final path = Path();
    // Start at the bottom center of the circle above
    path.moveTo(size.width / 2, 0);
    // Cubic Bezier curve for a pronounced S-shape
    path.cubicTo(
      size.width / 4, size.height * 0.2,   // Control point 1 (left curve)
      size.width * 3 / 4, size.height * 0.8, // Control point 2 (right curve)
      size.width / 2, size.height,          // End point at the top center of the circle below
    );

    // Manual dashing by sampling the path
    const dashLength = 6.0;
    const gapLength = 4.0;
    final pathMetrics = path.computeMetrics();
    for (final metric in pathMetrics) {
      double distance = 0.0;
      while (distance < metric.length) {
        final nextDistance = distance + dashLength;
        final tangent = metric.extractPath(distance, nextDistance.clamp(0, metric.length));
        canvas.drawPath(tangent, paint);
        distance = nextDistance + gapLength;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
