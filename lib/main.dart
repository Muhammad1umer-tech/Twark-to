import 'package:flutter/material.dart';
import 'package:flutter_tawk/flutter_tawk.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({@required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Tawk(
          directChatLink:
              'https://tawk.to/chat/640f06ff4247f20fefe59670/1grdb6m0s  ',
          visitor: TawkVisitor(
            name: 'mumer',
            email: 'mumer@gmail.com',
          ),
        ),
      ),
    );
  }
}
