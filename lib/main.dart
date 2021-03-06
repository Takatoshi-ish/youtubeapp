import 'package:flutter/material.dart';
import 'package:youtubeapp/video_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "item $i");

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
                              Text('????????????'),
                            ],
                          ),
                          onPressed: (){
                            // todo
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () async{
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoDetailPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(8.0),
                      leading: Image.network(
                        'https://storage.googleapis.com/stateless-kboy-salon-com/2020/05/6f797226-flutter%E3%82%B5%E3%83%A0%E3%83%8D.png'
                      ),
                      title: Column(
                        children: <Widget>[
                          Text(
                            '[Flutter??????] youtube??????????????????????????????',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '267?????????',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '5??????',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing:  Icon(Icons.more_vert),
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ) 
    );
  }
}
