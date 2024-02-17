import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
        useMaterial3: true,
      ),
      home: const ResponsiveHome(),
    );
  }
}

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final isPortrait = orientation == Orientation.portrait;

    return isPortrait
        ? Scaffold(
            appBar: AppBar(title: const Text('Responsive App')),
            drawer: const Drawer(
              child: Center(
                child: Text('Abdullah Raza 20K-0184'),
              ),
            ),
            body: GridView.count(
              shrinkWrap: true,
              childAspectRatio: 5,
              crossAxisCount: 1,
              children: List.generate(20, (index) {
                return Center(
                  child: Text('Number $index'),
                );
              }),
            ),
          )
        : Row(
            children: [
              const Drawer(
                child: Center(
                  child: Text('Abdullah Raza 20K-0184'),
                ),
              ),
              Expanded(
                child: Scaffold(
                  appBar: AppBar(title: const Text('Responsive App')),
                  body: GridView.count(
                    shrinkWrap: true,
                    childAspectRatio: 2.5,
                    crossAxisCount: 2,
                    children: List.generate(20, (index) {
                      return Center(
                        child: Text('Number $index'),
                      );
                    }),
                  ),
                ),
              ),
            ],
          );
  }
}
