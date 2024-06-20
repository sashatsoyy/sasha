import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const CryptoCurrenciesList());
}

class CryptoCurrenciesList extends StatelessWidget {
  const CryptoCurrenciesList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Currencies List',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
        listTileTheme: ListTileThemeData(iconColor: Colors.white),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(255, 31, 31, 31),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            )),
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
        title: Text('Crypto Currencies List'),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, i) => ListTile(
          leading: SvgPicture.asset(
            'assets/svg/logo.svg',
            height: 30,
            width: 30,
          ),
          title: Text(
            'Bitcoin',
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '500\$',
            style: theme.textTheme.labelSmall,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ),
    );
  }
}
