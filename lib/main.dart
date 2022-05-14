import 'package:flutter/material.dart';
import 'dart:math';

bool boxvalue = false;
int index = 0;
var list = [
  'either the ai decided to be lazy, you just got here, or the box is empty',
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
  'just find a another chance to',
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
  'freeze your fruits and veges',
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
  'thats cool and all but have you heard about the 4v1 asymmetrical multiplayer horror game identity v by netease?',
  'there is no backsliding into old habits, merely re-runs',
  'facebook said that it had now fixed the problem',
  'it COULD be worse',
  'you might want to check your bank account',
  'drink some water, you seem dehydrated',
  'if you can ignore the problem for now come back to it tomorrow with new ideas',
  'i-is your fridge running par chance... shit *click*',
  'have you lied to your doctor?, if yes that bad dont do that',
  'thats what SHE said, hehe',
  'look im just a staving small indie developer forced into a box to give out advice',
  '☠️',
  'anything can be a hole puncher if you try hard enough',
  'i honestly dont know what to put here (not about your problem i just dont want to code more of these)',
  'bees.',
  'go worship treesus',
  'pray to lord hexagon the bestagon',
  'go help a small independent nation fight for independence, you will feel better, no cap',
  'go help a random bird and or person named after a bird (unless that name is in fact their middle name then their fyp is too close to mine)',
  'a racoon meme a day keeps the big sad away or something',
  'typing useless life advice every day until i just cant anymore',
  'https://open.spotify.com/track/2RiBogNRfulkNf7fVbPOrJ?si=25af3d3dc3cf4dfa',
  '*pats on back*',
  'life is short, life is shit, soon it will be over',
  'are  you a god or a freezer, thats right a frickin god',
  'jeebus go see a therapist',
  'repeat after me: i am a confident chicken',
  'your three options are poison torture and bird',
  'take a box fill it to the brim with ranch and send it though the mail',
  'chef hot-and-spicy is TRIGGERED',
  'life is pain but thats how you make money',
  'big squid egg squid egg chain egg big squid anchor egg egg',
  'sleep and like more then the two hours you probably get',
  'is that even your house, is that sappho youre reading?',
  'oh crap this is a human, not a frickin chicken.. BOB GET UR ASS OVER HERE',
  'wow.. just wow',
  'watch heartstopper on netflix, the vibes are immaculate',
  '🫂',
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
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: const Center(
                child: Text(
              "this program might contain some swareing alivent references and other stuff that's not great for kids or depressed ppl",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            )),
          ),

          const SizedBox(height: 40),
          TextFormField(
            decoration: const InputDecoration(
                hintText: 'what do you need help with?',
                contentPadding: EdgeInsetsDirectional.only(start: 40, end: 40)),
            validator: (String? value) {
              if (value == null) {
                boxvalue = false;
              } else {
                boxvalue = true;
              }

              return null;
            },
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // generate a random index based on the list length
                // and use it to retrieve the element
                setState(() {
                  if (boxvalue = true) {
                    final _random = Random();
                    index = _random.nextInt(list.length);
                  } else {
                    index = 0;
                  }
                });
              },
              child: const Text('help me pls'),
            ),
          ),
          const SizedBox(height: 20),
          Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Center(
                child: Text(
                  list[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14),
                ),
              ))

          // ignore: unnecessary_new
        ],
      ),
    );
  }
}
