import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
void main() => runApp(Home());

class Home extends StatefulWidget{
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{

  bool themeStateChecker = true;
  String name = "Dewansh Rawat";
  String tagline = "Designer | Developer | Hustler | Guitarist";
  String aboutMe = "My name is Dewansh Rawat. I'm a tech enthusiast, a frontend designer and a backend developer to be specific. I love working on new exciting projects. I am currently working on ML related applications. Interested in working together? Just drop me a line.";
  String contactLine = "Pick your favorite means of communication.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeStateChecker ? ThemeData(brightness: Brightness.light, accentColor: Colors.red, primaryColor: Colors.redAccent) : ThemeData(brightness: Brightness.dark, accentColor: Colors.red, primaryColor: Colors.redAccent),
      home: Scaffold(
        appBar: AppBar(
          title: Text("$name"),
          actions: <Widget>[
              IconButton(
                onPressed: (){
                  setState((){
                    themeStateChecker = !themeStateChecker;
                  });
                },
                icon: Icon(Icons.lightbulb_outline),
              ),
              IconButton(
                onPressed: (){
                  Share.share("See my details and reach out to me at folio! Download now from https://dewanshrawat.tech/");
                },
                icon: Icon(Icons.share),
              )
            ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(30.0),
                ),
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/images/dewanshrawat15.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                ),
                Text(
                  "$name",
                  style: TextStyle(fontSize: 32, fontFamily: "Product Sans"),
                ),
                Padding(
                  padding: EdgeInsets.all(6.0),
                ),
                Text(
                  "$tagline",
                  style: TextStyle(fontSize: 18, fontFamily: "Product Sans"),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                ),
                Text(
                  "About Me",
                  style: TextStyle(fontSize: 32.0, fontFamily: "Product Sans"),
                ),
                Padding(
                  padding: EdgeInsets.all(28.0),
                  child: Center(
                    child: Text(
                      "$aboutMe",
                      style: TextStyle(fontSize: 18.0, fontFamily: "Product Sans"),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Text(
                  "Reach Me",
                  style: TextStyle(fontSize: 32.0, fontFamily: "Product Sans"),
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                ),
                Text(
                  "$contactLine",
                  style: TextStyle(fontSize: 18, fontFamily: "Product Sans"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 70.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      GestureDetector(
                        onTap: () async {
                          var facebookUrl = "https://facebook.com/dewanshrawat15";
                          if (await canLaunch(facebookUrl)){
                            await launch(facebookUrl);
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                            child: Icon(FontAwesomeIcons.facebook, size: 32, color: Colors.indigo),
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      GestureDetector(
                        onTap: () async {
                          var instagramUrl = "https://instagram.com/dewanshrawat15";
                          if (await canLaunch(instagramUrl)){
                            await launch(instagramUrl);
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                            child: Icon(FontAwesomeIcons.instagram, size: 32, color: Colors.amber),
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      GestureDetector(
                        onTap: () async {
                          var twitterUrl = "https://twitter.com/dewanshrawat15";
                          if (await canLaunch(twitterUrl)){
                            await launch(twitterUrl);
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                            child: Icon(FontAwesomeIcons.twitter, size: 32, color: Colors.lightBlue),
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      GestureDetector(
                        onTap: () async {
                          var githubUrl = "https://github.com/dewanshrawat15";
                          if (await canLaunch(githubUrl)){
                            await launch(githubUrl);
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                            child: Icon(FontAwesomeIcons.github, size: 32, color: Colors.black87),
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                      ),
                      GestureDetector(
                        onTap: () async {
                          var mailUrl = "mailto:dewanshrawat15@gmail.com";
                          if (await canLaunch(mailUrl)){
                            await launch(mailUrl);
                          }
                        },
                        child: Container(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                            child: Icon(FontAwesomeIcons.envelope, size: 32, color: Colors.red),
                          )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                ),
                Text(
                  "Made with ♡ by DSC BVP Pune",
                  style: TextStyle(fontSize: 22, fontFamily: "Product Sans"),
                ),
                Padding(
                  padding: EdgeInsets.all(32.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}