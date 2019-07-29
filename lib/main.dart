import 'package:flutter/material.dart';

main() => runApp(new MaterialApp(
      home: new AppHome(),
    ));

class AppHome extends StatefulWidget {
  @override
  State<AppHome> createState() {
    return new AppState();
  }
}

class AppState extends State<AppHome> {
  var isSelected = false;
  var isFirstSelect = true;
  var mycolor = Colors.white;
  List<String> Names = [
    'Abhishek',
    'John',
    'Robert',
    'Shyam',
    'Sita',
    'Gita',
    'Nitish'
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("My List App"),
      ),
      body: new Container(
        child: new ListView.builder(
          reverse: false,
          itemBuilder: (_, int index) =>
              EachList(this.Names[index], isSelected, mycolor, isFirstSelect),
          itemCount: this.Names.length,
        ),
      ),
    );
  }
}

class EachList extends StatefulWidget {
  final String name;
  var isSelected;
  var isFirstSelect;
  var mycolor;
  EachList(this.name, this.isSelected, this.mycolor, this.isFirstSelect);

  @override
  _EachListState createState() => _EachListState();
}

class _EachListState extends State<EachList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        selected: widget.isSelected,
        leading: const Icon(Icons.info),
        title: new Text("Test"),
        subtitle: new Text("Test Desc"),
        trailing: new Text("3"),
        onLongPress: widget.isFirstSelect ? () {
          setState(() {
            if (widget.isSelected) {
              widget.isFirstSelect = true;
              widget.mycolor = Colors.white;
              widget.isSelected = false;
            } else {
              widget.isFirstSelect = false;
              widget.mycolor = Colors.grey[300];
              widget.isSelected = true;
            }
          });
        } : null,
        onTap:  !widget.isFirstSelect ? () {
          setState(() {
            
            if (widget.isSelected) {
              widget.isFirstSelect = true;
              widget.mycolor = Colors.white;
              widget.isSelected = false;
            } else {
              widget.isFirstSelect = false;
              widget.mycolor = Colors.grey[300];
              widget.isSelected = true;
            }
          });
        } : null,
        );
  }
}
