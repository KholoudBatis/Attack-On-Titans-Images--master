import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main(){

  runApp(
    MaterialApp(
      home: MyApp()
  ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anime',
          style:TextStyle(fontSize:30.0,color: Colors.amber[700]),),
          backgroundColor: Colors.black,

        ),
       body: HomePage(),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "images/1.jpg",
    "images/2.png",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.png",
    "images/6.jpg",
    "images/7.jpg",
  ];
  var imagesIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Image(
              height: 400.0,
              image: AssetImage(
                  images[imagesIndex]
              ),
            ),

          ),
          SizedBox(
            height: 20.0,
          ),
          Text('Attack on Titans',
            style: TextStyle(fontSize: 35.0,
              fontFamily: 'East',
              color: Colors.red[900],),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 42.0,
                color: Colors.amber,
                onPressed: () {
                  setState(() {
                    imagesIndex > 0 ?
                    imagesIndex-- : imagesIndex = images.length - 1;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                iconSize: 42.0,
                color: Colors.amber,
                onPressed: () {
                  setState(() {
                    imagesIndex < images.length - 1 ?
                    imagesIndex++ : imagesIndex = 0;
                  });
                },
              ),

            ],
          ),
        ],
      ),

    );
  }
}












