import 'dart:convert' show jsonDecode;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CardComponent extends StatefulWidget {
  const CardComponent({super.key});
  @override
  State<CardComponent> createState() => _CardComponent();
}

// double _volume = 0.0;
class _CardComponent extends State<CardComponent> {
    late Future<Album> futureAlbum;
    @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
        child: FutureBuilder<Album>(
            future: futureAlbum,
            builder:(context,snapshot){
                if(snapshot.data == null){
                    return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
                } else{
                    //  return Card(
                    //   elevation: 5,
                    //   child: Padding(
                    //     padding: EdgeInsets.all(7),
                    //     child: Stack(
                    //       children: <Widget>[
                    //         Align(
                    //           alignment: Alignment.centerRight,
                    //           child: Stack(
                    //             children: <Widget>[
                    //               Padding(
                    //                 padding: const EdgeInsets.only(left: 10, top: 5),
                    //                 child: Column(
                    //                   children: <Widget>[
                    //                     Row(
                    //                       children: <Widget>[
                    //                         Padding(
                    //                           padding: const EdgeInsets.only(left: 15.0),
                    //                             child: Align(
                    //                               alignment: Alignment.centerLeft,
                    //                               // child: Icon(
                    //                               //   CryptoFontIcons.BTC,
                    //                               //   color: Colors.amber,
                    //                               //   size: 40,
                    //                               // )
                    //                               ),
                    //                           )
                    //                       ],
                    //                     )
                    //                   ],
                    //                 ))
                    //             ],
                    //           ),
                    //         )
                    //       ]),
                    //   ),
                    //   // child:
                    //   //   ListTile(
                    //   //     title: Text("Role"),
                    //   //     subtitle: Text("XXX")
                    //   //   )
                    //  );
                     return ListTile(
                      tileColor: Colors.deepPurple[50],
                    // leading: Text(snapshot.data!.title),
                      title: Wrap(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Name"),
                            Text(snapshot.data!.title)
                          ]
                        ),
                        Column(
                          children: <Widget>[
                            Text("Role"),
                            Text(snapshot.data!.title)
                          ]
                        ),
                        Column(
                          children: <Widget>[
                            Text("Spend"),
                            Text(snapshot.data!.title)
                          ]
                        ),
                      ]
                    ),
                    // Text(snapshot.data!.title),
                    trailing: Icon(Icons.arrow_forward_ios)
                );
                }
                
            }
        )
        
    //     ListTile(
    //   leading: Text("Name"),
    //   title: Text("Vaction Type"),
    //   // ignore: unnecessary_const
    //   trailing: Icon(Icons.arrow_forward_ios),
    //   // const IconButton(
    //   //   icon: Icon(Icons.volume_up),
    //   //   tooltip: 'Increase volume by 10',
    //   //   onPressed: () {
    //   //     setState(() {
    //   //        _volume += 10.0;
    //   //     });
    //   //   },
    //   // )
    // )
    );
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}