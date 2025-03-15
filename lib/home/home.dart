import 'package:flutter/material.dart';
import 'package:setup_pro/widgets/flutter_bordered_button.dart';
import 'package:setup_pro/widgets/flutter_colored_button.dart';
import 'package:setup_pro/widgets/flutter_text_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.black,
      ),

      body: Center(
        child: FlutterColoredButton(
          onPresssed: () async {
            // ApiService service;
            // service = ApiService();

            // final response = await service.getData('/objects');

            // debugPrint(response.data.toString());
          },

          text: 'something',
          isDisable: false,
        ),
      ),
    );
  }
}
