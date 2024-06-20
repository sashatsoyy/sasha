import 'package:flutter/material.dart';

void main() {
  runApp(const CryptoCurrenciesList());
}

class CryptoCurrenciesList extends StatelessWidget {
  const CryptoCurrenciesList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currencies List',
      theme: ThemeData(
        primaryColor: Colors.yellow,
        scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          labelSmall: TextStyle(
            color: Colors.white70,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: const MyHomePage(
        title: 'Crypto Currencies List',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, i) => ListTile(
          title: Text(
            'Bitcoin',
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '500\$',
            style: theme.textTheme.labelSmall,
          ),
        ),
      ),
    );
  }
}