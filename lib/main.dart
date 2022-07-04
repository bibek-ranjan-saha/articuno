import 'package:articuno/widgets/coloured_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Articuno',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Articuno Assignment'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

List<Widget> containers = [const ColouredContainer()];
  void _swapContainer() {
    setState(() {
      containers.add(const ColouredContainer());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: containers,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _swapContainer,
        tooltip: 'generate new container',
        child: const Icon(Icons.account_circle_outlined),
      ),
    );
  }
}
