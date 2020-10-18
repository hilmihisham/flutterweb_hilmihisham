import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  
  // app bar title style
  final TextStyle appbarTitleStyle = TextStyle(
    // color: Color.fromRGBO(255, 166, 62, 1),
    color: Colors.white,
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

  // paragraph style
  final TextStyle pStyle = TextStyle(
    color: Colors.black,
    fontFamily: 'Ubuntu',
    fontSize: 16,
    fontWeight: FontWeight.w400,
    // shadows: <Shadow>[
    //   Shadow(
    //     offset: Offset(1.4, 1.4),
    //     blurRadius: 0.0,
    //     color: Color.fromRGBO(20, 20, 20, 1),
    //   ),
    // ],
  );

  // table top title style
  // table title style
  final TextStyle tableTopTitleStyle = TextStyle(
    color: Colors.black,
    fontFamily: 'Bitter',
    fontSize: 25,
    fontWeight: FontWeight.w600,
  );

  // table title style
  final TextStyle tableTitleStyle = TextStyle(
    color: Colors.black,
    fontFamily: 'Bitter',
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        child: CustomScrollView(

          slivers: <Widget>[

            SliverAppBar(
              floating: false,
              pinned: true,
              snap: false,
              backgroundColor: Colors.orange[700],
              expandedHeight: 700.0,
              excludeHeaderSemantics: true, // added with SABT addition
              flexibleSpace: FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('bg-resume.jpg'),
                  fit: BoxFit.cover,
                ),
                // SABT start
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                titlePadding: EdgeInsets.only(bottom: 30.0, left: 20.0, right: 20.0,),
                title: SABT(
                  child: Text(
                    'a computer science graduate who\'ve made coding as a way to get myself out of boredom.',
                    style: appbarTitleStyle,
                  ),
                ),
                // SABT end
              ),
            ),

            SliverList(
              // delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              //   return Container(
              //     height: 500,
              //     color: Color(Random().nextInt(0xffffffff)),
              //   );
              // },),
              delegate: SliverChildListDelegate(
                <Widget>[

                  Container(
                    color: Color.fromRGBO(247, 225, 200, 1),
                    child: Table(
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      columnWidths: {0: FractionColumnWidth(.3)},
                      children: <TableRow>[
                        TableRow(
                          children: <Widget>[

                            Container(
                              child: Image.asset(
                                'profile400x400.png',
                                height: 300.0,
                              ),
                              padding: EdgeInsets.only(left: 20, top: 20, right: 5, bottom: 20,),
                            ),

                            Container(
                              child: Flexible(
                                child: Text(
                                  'It\'s Hilmi here, nice to meet you! Currently worked as a full-stack developer, I\'m a coder for fun (and living), blog writer without reader, and a graduate from California State University, Northridge with Bachelor of Science in Computer Science. In the past few years I have worked on several small experimental projects alongside my formal education.\n\n' +
                                  'I have advanced knowledge in Java and C#, experience making a mobile game using Unity3D, as well as some website building skill from the experience of making and experimenting on this website. Additionally, I am a hobbyist illustrator and graphic editor, with some familiarity of using Adobe Photoshop and also VSCO and Adobe Lightroom for photo retouching.\n\n' +
                                  'As far as the programming goes, I\'m highly interested in gaming and mobile apps.',
                                  style: pStyle,
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                ),
                              ),
                              padding: EdgeInsets.only(left: 5, top: 15, right: 15, bottom: 15,),
                            ),

                          ]
                        ),
                      ],
                    ),
                  ),

                  Container(
                    color: Color.fromRGBO(178, 206, 227, 1),
                    child: Table(
                      // defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      columnWidths: {0: FractionColumnWidth(.3)},
                      children: <TableRow>[

                        TableRow(
                          children: <Widget>[
                            Container(
                              child: Flexible(
                                child: Text(
                                  'Skills',
                                  style: tableTopTitleStyle,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 25,),
                            ),

                            Container(
                              padding: EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 25,),
                            ),
                          ]
                        ),

                        TableRow(
                          children: <Widget>[

                            Container(
                              child: Flexible(
                                child: Text(
                                  'Programming Skills',
                                  style: tableTitleStyle,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              padding: EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 15,),
                            ),

                            Container(
                              child: Flexible(
                                child: Text(
                                  '- Languages: Java, JavaScript, C#, C\n' +
                                  '- Database: Oracle 11g/12c, Oracle DB, SQL Developer, SQL Plus\n' +
                                  '- Web Technologies: HTML/CSS, JSP, XML, SoapUI\n' +
                                  '- Tools and Technologies: Oracle WebLogic, Tortoise SVN, Git, Unity3D, Eclipse, JUnit 4, Log4J\n' +
                                  '- API and Frameworks: Apache Struts, Selenium, Bootstrap 4, Java Swing, JavaFX, Express.JS, Node.JS, Vue.JS\n' +
                                  '- Others: Adobe Photoshop, Microsoft Office',
                                  style: pStyle,
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                ),
                              ),
                              padding: EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 15,),
                            ),
                            
                          ]
                        ),
                      ],
                    ),
                  ),
                  
                  Container(color: Colors.purple, height: 150.0),
                  Container(color: Colors.green, height: 150.0),
                ]
              ),
            ),

          ],
        ),
      ),
    );
  }
}

/// SliverAppBarTitle (SABT)
/// 
/// Reappearing app bar title created by Stefan Matthias Aust.
/// 
/// Full docs at https://medium.com/@eibaan_54644/reappearing-app-bar-titles-eff8b35f6826.
/// Updated code by Maadhav at https://gist.github.com/Maadhav/2926541f8de8cc566632f1dda5e230eb.
class SABT extends StatefulWidget {
  final Widget child;
  const SABT({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  _SABTState createState() {
    return new _SABTState();
  }
}
class _SABTState extends State<SABT> {
  ScrollPosition _position;
  bool _visible;
  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _removeListener();
    _addListener();
  }
  void _addListener() {
    _position = Scrollable.of(context)?.position;
    _position?.addListener(_positionListener);
    _positionListener();
  }
  void _removeListener() {
    _position?.removeListener(_positionListener);
  }
  void _positionListener() {
    final FlexibleSpaceBarSettings settings =
      context.dependOnInheritedWidgetOfExactType();
    print(settings.minExtent);
    bool visible = settings == null || settings.currentExtent > settings.minExtent+10;
    if (_visible != visible) {
      setState(() {
        _visible = visible;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 300),
      opacity: _visible?1:0,
      child: widget.child,
    );
  }
}