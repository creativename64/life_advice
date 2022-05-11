import 'package:flutter/material.dart';
import 'dart:math';

int index = 0;
var list = [
  'either the ai decided to be lazy, or you didnt enter anything',
  'one',
  'two',
  'three',
  'go commit arson',
];
var gae = 'enter something in the box then i can give you advice';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Life Advice Giver';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'what do you need help with?',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'either you have no problems or that box is empty';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                final _random = Random();
                // generate a random index based on the list length
                // and use it to retrieve the element
                setState(() {
                  index = _random.nextInt(list.length);
                });
              },
              child: const Text('help me pls'),
            ),
          ),
          Text(list[index])

          // ignore: unnecessary_new
        ],
      ),
    );
  }
}
