import 'package:flutter/material.dart';
import 'dart:math';

int index = 0;
var list = [
  'either the ai decided to be lazy, or you just got here',
  'ignore the problem, it will work out',
  'duct tape can fix anything tbh',
  'cut down a tree',
  'go commit arson',
  'i really dont care tbh',
  'im fond of tax evasion',
  'commit alivent (but like dont really)',
  'listen to music for a bit then think it over',
  'bribe someone involved',
  'doom scroll instagram and follow @creativename64 while youre at it',
  'just fina another chance to',
  'get that cringe outta here',
  'do nothing',
  'give me money',
  'just skip it, smh',
  'lock anything and anyone involved in your problem in a closet',
  'sleep',
  'drink iced coffee',
  'go touch grass',
  'is this even a problem',
  'just stop',
  'a- are you ok',
  'high heels or risers',
  'find a garbage dump and jump into it',
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
          Center(
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
          Text(
            list[index],
            textAlign: TextAlign.center,
          )

          // ignore: unnecessary_new
        ],
      ),
    );
  }
}
