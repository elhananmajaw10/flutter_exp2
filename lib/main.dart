import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveHomePage(),
    );
  }
}

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adaptive and Responsive UI'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Column(
              children: [
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Student'),
                    subtitle: const Text('Mobile Layout'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.book),
                    title: const Text('Courses'),
                    subtitle: const Text('Mobile Layout'),
                  ),
                ),
              ],
            );
          }

          return Row(
            children: [
              Expanded(
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.people),
                    title: const Text('Students'),
                    subtitle: const Text('Desktop / Tablet Layout'),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: ListTile(
                    leading: const Icon(Icons.school),
                    title: const Text('Courses'),
                    subtitle: const Text('Desktop / Tablet Layout'),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}