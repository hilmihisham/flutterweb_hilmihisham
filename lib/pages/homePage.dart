import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  double _imgSize = 100;

  // h1 style
  TextStyle h1Style = TextStyle(
    color: Colors.white,
    fontFamily: 'Bitter',
    fontSize: 40,
    fontWeight: FontWeight.w800,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(2.0, 2.0),
        blurRadius: 0.0,
        color: Color.fromRGBO(20, 20, 20, 1),
      ),
    ],
  );

  // h2 style + small
  TextStyle h2StyleSmall = TextStyle(
    color: Color.fromRGBO(108, 117, 125, 1),
    fontFamily: 'Bitter',
    fontSize: 30,
    fontWeight: FontWeight.w800,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(1.5, 1.5),
        blurRadius: 0.0,
        color: Color.fromRGBO(20, 20, 20, 1),
      ),
    ],
  );

  // p style
  TextStyle pStyle = TextStyle(
    color: Color.fromRGBO(255, 166, 62, 1),
    fontFamily: 'Ubuntu',
    fontSize: 18,
    fontWeight: FontWeight.w500,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(1.4, 1.4),
        blurRadius: 0.0,
        color: Color.fromRGBO(20, 20, 20, 1),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      // home: Container(
      //   decoration: BoxDecoration(
      //     image: AssetImage('bg-mainpage.jpg'),
      //     fit: BoxFit.cover,
      //   ),
      // )
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('bg-mainpage.jpg'), 
            fit: BoxFit.cover,
          ),
        ),

        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'doodle400x400.png',
                    //fit: BoxFit.cover,
                    height: _imgSize,
                  ),
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                Container(
                  child: Text(
                    'hilmihisham',
                    style: h1Style,
                  ),
                  padding: EdgeInsets.only(bottom: 8.0),
                ),
                Container(
                  child: Text(
                    'MUHAMMAD HILMI BADROL HISHAM.',
                    style: h2StyleSmall,
                  ),
                  padding: EdgeInsets.only(bottom: 8.0),
                ),
                Container(
                  child: Text(
                    'A coder for fun (and living, currently), blog writer without reader, and I\'ve graduated!',
                    style: pStyle,
                  ),
                  padding: EdgeInsets.only(bottom: 8.0),
                ),
                Container(
                  child: Text(
                    '________',
                    style: TextStyle(
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  padding: EdgeInsets.only(bottom: 16.0),
                ),
                // Text(' '), // 20201017 hilmi - placeholder to add empty line in between
                InkWell(
                  child: Container(
                    child: Text(
                      'mail@hilmihisham.com',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    padding: EdgeInsets.only(bottom: 8.0),
                  ),
                  onTap: () => launch('mailto:mail@hilmihisham.com'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.githubAlt),
                      onPressed: () => launch('https://github.com/hilmihisham'),
                    ),
                    Text(
                      ' · ',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.linkedin),
                      onPressed: () => launch('https://www.linkedin.com/in/hilmihisham/'),
                    ),
                    Text(
                      ' · ',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.tumblr),
                      onPressed: () => launch('https://hilmihisham.tumblr.com/'),
                    ),
                    Text(
                      ' · ',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      onPressed: () => launch('https://www.instagram.com/hilmihisham/'),
                    ),
                    Text(
                      ' · ',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.youtubeSquare),
                      onPressed: () => launch('https://www.youtube.com/channel/UCAMEaCIqFgxEumO5nML_Kxg'),
                    ),
                  ],
                )
              ],
            ),
          ),
          backgroundColor: Color.fromRGBO(8, 135, 197, 0.73),
        ),
      ),
    );
  }
}
