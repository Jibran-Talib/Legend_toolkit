import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

// ignore: must_be_immutable
class ToolsList extends StatefulWidget {
  String tittle, imageurl;

  ToolsList({
    super.key,
    required this.tittle,
    required this.imageurl,
  });

  @override
  State<ToolsList> createState() => _ToolsListState();
}

class _ToolsListState extends State<ToolsList> {
  List<dynamic> simData = [
    {
      'Data 1': {
        {
          "Servers 1": 'www.data.com',
        },
        {
          "Servers 1": 'www.data3.com',
        },
        {
          "Servers 1": 'www.data.com',
        },
        {
          "Servers 1": 'www.data.com',
        },
      }
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            maxLines: 1,
            textAlign: TextAlign.center,
            widget.tittle,
            style: TextStyle(
              fontFamily: 'BreeSerif',
            ),
          ),
          backgroundColor: Colors.blue.shade300,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () async {
                  await Share.share(
                      'This Appliation This Very Usefull It Have Many Tools');
                },
                icon: Icon(Icons.share)),
            IconButton(onPressed: () {}, icon: Icon(Icons.info)),
          ],
        ),
        body: ListView.builder(
          itemCount: simData.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 20,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(widget.imageurl),
                  ),
                  title: Text(
                    simData[index]['Data 1'].toString(),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
