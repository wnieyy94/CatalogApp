import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));

}
  class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int item = 0;
    @override
    Widget build(BuildContext context) {
      return Scaffold(appBar: AppBar(
      title: Text('Catalog Item'),
      centerTitle: true,
      backgroundColor: Colors.red[300],
    ),
    body: Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
      child: Column(children: <Widget>[
         Center(
            child: Text('My Item', 
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[300],
              fontFamily: 'Courgette'
              ),
              ),
          ),
          
          Center(
            child: Text('$item', 
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[300],
              ),
              ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 50.0),
            child: Center(
              child: RaisedButton.icon(
                onPressed: () {
                  setState(() {
                    item = 0;
                  
                 });
                },
                icon: Icon(Icons.restore, color: Colors.white,),
                label: Text('restrore item', 
                style: TextStyle(color: Colors.white, fontSize: 20.0),),
                color: Colors.deepOrange[300]
                )
            ),
          ),
         
         
         ],
      )
      
     
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
          item++;
        });
        },
        child: Icon(
          Icons.add
        ),
        backgroundColor: Colors.redAccent,
      ),
  );

    }
}



