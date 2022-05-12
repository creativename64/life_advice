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
  'don’t ever stop learning and growing as a person',
  'keep some change just in case',
  'never, never, never give in',
  'do less shit',
  'but why?',
  'go with your gut',
  'freeze your fruits and vegss',
  'clean your room or house',
  'drink less iced coffee',
  'why are you asking a stupid program by a stupid person for advice, reach out to someone that you trust',
  'consolidate your debt',
  'you get all the time to be yourself but thats bullcrap, instead be me. im cool as fuck',
  'just be youself',
  'stop eating it',
  'gaslight, gatekeep, girlboss',
  'give several undeniable instances',
  'get rid of toxic friends and substances',
  'move to a more secure location',
  'get inspired by other people’s success',
  'google it',
  'im sorry but you are going to die, you cant even do anything about it',
  'thats cool and all but have you heard about the 4v1 asemetrical multiplayer horror game idenity v by netease?',
  'there is no backsliding into old habits, meerly re-runs',
  'facebook said that it had now fixed the problem',
  'it COULD be worse',
];
var gae = 'enter something in the box then i can give you advice';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Problem Solver';

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
