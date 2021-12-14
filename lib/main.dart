import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home:Scaffold(
        appBar: AppBar(
          leading:  Icon(Icons.videocam),
          title: const Text(
            'YoutubeApp'
          ),
          actions: <Widget>[
            SizedBox(
              width: 36,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: (){
                  // todo
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: (){
                  //todo
                },
              ),
            ), 
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.network(
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Feverydayicons.jp%2Ficons%2Fpicture%2F&psig=AOvVaw1wBTp0dCtWl87JaUYqWsxF&ust=1639610904790000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIiE3eG45PQCFQAAAAAdAAAAABAG'
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                        'YoutubeApp'
                      ),
                      FlatButton(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            Text('登録する'),
                          ],
                        ),
                        onPressed: (){
                          // todo
                        },
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ) 
    );
  }
}
