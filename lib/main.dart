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
              width: 44,
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
                  SizedBox(
                    width: 60,
                    height: 60,
                    child:Image.network(
                      'https://avatars.githubusercontent.com/u/65013756?s=200&v=4'
                    ),
                  ),
                  const SizedBox(
                    width: 8,
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
                  ),
                ],
              )
            ],
          ),
        ),
      ) 
    );
  }
}
