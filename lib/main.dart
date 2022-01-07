import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote Generator App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var rnd = new Random();
  var steve = <String>[
    'Do not try to do everything. Do one thing well.',
    'It doesn’t make sense to hire smart people and tell them what to do; we hire smart people so they can tell us what to do.',
    "Great things in business are never done by one person, they're done by a team of people.",
    'Don’t let the noise of others’ opinions drown out your own inner voice.',
    'If you define the problem correctly, you almost have the solution.',
  ];
  var thanos = <String>[
    'Perfectly balanced, As all things should be',
    'The hardest choices require the strongest wills',
    "As long as there are those That remember what was, there will always be those that are unable to accept What can be. They will resist",
    'Don’t let the noise of others’ opinions drown out your own inner voice.',
    'Destiny waits for no man. Not even one who shall bring the universe to its knees.',
  ];

   var sova = <String>[
    'This bow has taken man and beast alike. I have found there is little difference.',
     'If youre not a good shot today, dont worry. There are other ways to be useful',
     'A bow and arrow is old fashioned. But sometimes old ways are best',
     'We are strong because we are together. Dont forget that',
     'There is no retreat. Not when annihilation is at stake. This is our day',
  ];

  var tanjiro = <String>[
    'It’s the heart that drives people so it can grow as strong as you need it to',
     'No matter how many people you may lose, you have no choice but to go on living. No matter how devastating the blows might be',
     'Everything I wasn’t able to do for the others, I’ll do it for you',
     'Dont let anyone down, no matter what it takes',
     'Breathe all the way into my fingertips! Meditation boosts concentration',
  ];

  var einstein = <String>[
    'Life is like riding a bicycle. To keep your balance, you must keep moving.',
     'The important thing is to not stop questioning. Curiosity has its own reason for existing.',
     'Look deep into nature, and then you will understand everything better.',
     'Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning.',
     'Strive not to be a success, but rather to be of value',
  ];
  String text = '';
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;
    

    return Scaffold(
         appBar: AppBar(
        backgroundColor: const Color(0xfff5f5f5),
        title: const Text('Thought of the Day',style: TextStyle(color: Colors.black),),
        iconTheme: const IconThemeData(color: Colors.black,),
        ),
        

     body:SingleChildScrollView(
      
      child: Column(
        children: [
          const SizedBox(height: 20,),
          Row(      
               mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children:const [
                Text('Choose Quotes from:', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'avenir',
                ),),
              ],      
            ),
          ExpansionTile(
            title: const Text("Steve Jobs",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'avenir',)),
            children: [
              Align(
                child: ElevatedButton(
                  child: const Text('Get Quote'),
                  onPressed: () {
                    setState(() {
                      int quoteIndex = rnd.nextInt(steve.length);
                      text = steve[quoteIndex];
                      text = '"$text" \n- Steve Jobs';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF010100),
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            title: const Text("Thanos",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'avenir',)),
            children: [
              Align(
                child: ElevatedButton(
                  child: Text('Get Quote'),
                  onPressed: () {
                    setState(() {
                      int quoteIndex = rnd.nextInt(thanos.length);
                      text = thanos[quoteIndex];
                      text = '"$text" \n- Thanos';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF010100),
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            title: const Text("Sova",
             style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'avenir',)),
            children: [
              Align(
                child: ElevatedButton(
                  child: const Text('Get Quote'),
                  onPressed: () {
                    setState(() {
                      int quoteIndex = rnd.nextInt(sova.length);
                      text = sova[quoteIndex];
                      text = '"$text" \n- Sova';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF010100),
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            title: const Text("Tanjiro Kamado",
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'avenir',)),
            children: [
              Align(
                child: ElevatedButton(
                  child: const Text('Get Quote'),
                  onPressed: () {
                    setState(() {
                      int quoteIndex = rnd.nextInt(tanjiro.length);
                      text = tanjiro[quoteIndex];
                      text = '"$text" \n- Tanjiro Kamado';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF010100),
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            title: const Text("Albert Einstein", 
                  style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'avenir',)),
            children: [
              Align(
                child: ElevatedButton(
                  child: Text('Get Quote!'),
                  onPressed: () {
                    setState(() {
                      int quoteIndex = rnd.nextInt(einstein.length);
                      text = einstein[quoteIndex];
                      text = '"$text" \n- Albert Einstein';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.white
                  ),
                ),
              )
            ],
          ),
          Container(
                padding: EdgeInsets.only(
                    top: screenHeight / 55,
                    left: screenWidth / 5,
                    right: screenWidth / 5),
                decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xffdedede),
              ),
                child: Text(' $text', 
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'avenir',)),
              ),
        ],
      ),
    ),
    );
  }
}

