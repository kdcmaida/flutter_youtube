import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_youtube/model/playlist.dart';
import 'package:flutter_youtube/screens/player_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {

  List<PlayList> youtubelist;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    if (youtubelist == null) {
      youtubelist = List<PlayList>();
      youtubelist.add(PlayList(
          'Dart Programming for Flutter: Beginners Tutorial [ FREE COURSE ] Overview',
          '5rtujDjt50I'));
      youtubelist.add(PlayList(
          '1.2 Dart Installation: Setup DartPad or Intellij IDEA for Windows, Mac or Linux',
          'j_RIqUuqQXs'));
      youtubelist.add(PlayList(
          '2.1 Dart Hello World : Write your First Code in Dart and run it in DartPad or Intellij IDEA',
          'f663fBx_GIU'));
      youtubelist.add(
          PlayList('2.2 Dart Basic Syntax Tutorial: COMMENTS', 'xA8WfcZH4es'));
      youtubelist.add(PlayList(
          '3.1 Dart Data Types and Variables. Dart Tutorial for Flutter',
          'rUs7H9fZdV4'));
      youtubelist.add(PlayList(
          '3.2 Dart Strings, Literals and String Interpolation. Dart Tutorial for Flutter',
          'PBWN8VQsXqs'));
      youtubelist.add(PlayList(
          '3.3 Dart Defining Constants using final and const keyword. Dart Tutorial for Flutter',
          'IYZqVOH6oSU'));
      youtubelist.add(PlayList(
          '4.1 Dart IF ELSE Conditional Statements. Dart Tutorial for Flutter',
          'XSSbHTOC93g'));
      youtubelist.add(PlayList(
          '4.2 Dart Conditional Expressions: Ternary Operator of Java. Dart Flutter Tutorial',
          'qNWcoc25Ex4'));
      youtubelist.add(PlayList(
          '4.3 Dart SWITCH and CASE conditional statements. Dart Tutorial for Flutter',
          'XwehKYcCHzY'));
      youtubelist.add(PlayList(
          '5.1 Dart Loops and Iterators: Loop Control Statements. Dart Flutter Tutorial',
          'JuOHAd0LWPE'));
      youtubelist.add(PlayList(
          '5.2 Dart FOR Loop and how it works internally. Dart Tutorial for Flutter',
          'BCiyJOb7X-w'));
      youtubelist.add(PlayList(
          '5.3 Dart WHILE Loop example and how it works internally. Dart Tutorial for Flutter',
          'fAlF_QlTiAU'));
      youtubelist.add(PlayList(
          '5.4 Dart DO WHILE Loop and how it works internally. Dart Tutorial for Flutter',
          'IhDzsP1iIMI'));
      youtubelist.add(PlayList(
          '5.5 Dart BREAK Statement with Labelled FOR Loop. Dart Flutter Tutorial',
          'iuYtYWu5EaU'));
      youtubelist.add(PlayList(
          '5.6 Dart CONTINUE Statement with Labelled FOR Loop. Dart Flutter Tutorial',
          'yUUV2YZqOJA'));
      youtubelist.add(PlayList(
          '6.1 Dart Functions or Methods. Syntax and Properties. Dart Programming for Flutter',
          'EUPRbnicXUw'));
      youtubelist.add(PlayList(
          '6.2 Dart Functions or Methods example. Dart Programming for Flutter',
          '9yl-xPaXGXQ'));
      youtubelist.add(PlayList(
          '6.3 Dart Short Hand Syntax | FAT ARROW | Functions Expressions. Dart for Flutter',
          'F42iMVaNALA'));
      youtubelist.add(PlayList(
          '6.4 Dart Optional Positional Parameters in Functions. Dart Tutorial for Flutter',
          'M6eP0jwl1h4'));
      youtubelist.add(PlayList(
          '6.5 Dart Optional NAMED Parameters in Functions. Dart Tutorial for Flutter',
          'pH-CP8s_xK8'));
      youtubelist.add(PlayList(
          '6.6 Dart Optional Default Parameters in Function. Dart Flutter Tutorial',
          'N-Tq70W2cbI'));

      setState(() {
        this.count = youtubelist.length;
      });

    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Dart Playlist',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: getNoteListView());
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child:Icon(Icons.play_arrow),

              ),
              title: Text(
                this.youtubelist[position].ListTitle,
                style: titleStyle,
              ),
              onTap: () {
                debugPrint('ListTile Tapped');
                navigateToDetail(this.youtubelist[position]);
              },
            ),
          );
        });
  }

  void navigateToDetail(PlayList list) async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Player(list);
    }));

    if (result == true) {
//      updateListView();
    }
  }
}
