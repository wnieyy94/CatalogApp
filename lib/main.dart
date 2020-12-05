import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'catalogitem.dart';

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
  List<CatalogItem> catalogItems = [
    CatalogItem(nameItem: 'BagPack', priceItem: '12.00', imageItem: 'image_bagpack.png', descriptionItem: 'This is bagpack'),
    CatalogItem(nameItem: 'T-Shirt', priceItem: '10.00', imageItem: 'image_t-shirt.png', descriptionItem: 'This is t-shirt'),
    CatalogItem(nameItem: 'Cap', priceItem: '30.00', imageItem: 'image_cap.png', descriptionItem: 'This is cap'),
  ];

    Widget catalogItemCard(catalogItem) {

      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(children: <Widget>[
             Column(children: <Widget>[
                Image(image: AssetImage('assets/' + catalogItem.imageItem), width: 100, height: 100)
              ],),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text(catalogItem.nameItem, style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,

                    )),
                    Text(catalogItem.descriptionItem),
                    Text(
                          'RM' + catalogItem.priceItem, 
                          style: TextStyle(
                             fontSize: 30.0,
                             fontWeight: FontWeight.bold,
                             color: Colors.blueGrey[300],
                             fontFamily: 'Courgette'),
                        ),

                        RaisedButton.icon(
                          onPressed: () {
                            setState(() {
                              item++;
                        
                            });
                          },
                          icon: Icon(
                            Icons.add, 
                            color: Colors.white,
                          ),
                          label: Text(
                            'Add Item', 
                            style: TextStyle(color: Colors.white, fontSize: 20.0),
                          ),
                          color: Colors.deepOrange[300],
                        ),
                  ], 
                ),
              )
            
            ],),
         ), 
        ),
      );  
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(appBar: AppBar(
      title: Text('Catalog Item'),
      centerTitle: true,
      backgroundColor: Colors.red[300],
      actions: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(0.0,0.0,25.0,0.0),
        child: Badge(
          position: BadgePosition.topEnd(top: 0.0, end: 3.0),
        badgeContent: Text(item.toString(), style: TextStyle(color: Colors.white),),
        child: IconButton(icon: Icon(Icons.shopping_basket), onPressed: () 
        { setState(() {
          item = 0;

        });},
        ),
    ),
      )
    ],
    ),

    body: Column(children: catalogItems.map((catalogItem) => catalogItemCard(catalogItem)).toList(),),
    
    // body: Padding(
    //   padding: const EdgeInsets.fromLTRB(0.0, 200.0, 0.0, 0.0),
    //   child: Column(children: <Widget>[
    //      Center(
    //         child: Text('My Item', 
    //         style: TextStyle(
    //           fontSize: 30.0,
    //           fontWeight: FontWeight.bold,
    //           color: Colors.blueGrey[300],
    //           fontFamily: 'Courgette'
    //           ),
    //           ),
    //       ),
          
    //       Center(
    //         child: Text('$item', 
    //         style: TextStyle(
    //           fontSize: 40.0,
    //           fontWeight: FontWeight.bold,
    //           color: Colors.blueGrey[300],
    //           ),
    //           ),
    //       ),
          
    //       Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 50.0),
    //         child: Center(
    //           child: RaisedButton.icon(
    //             onPressed: () {
    //               setState(() {
    //                 item = 0;
                  
    //              });
    //             },
    //             icon: Icon(Icons.restore, color: Colors.white,),
    //             label: Text('restrore item', 
    //             style: TextStyle(color: Colors.white, fontSize: 20.0),),
    //             color: Colors.deepOrange[300]
    //             )
    //         ),
    //       ),
         
         
    //      ],
    //   )
      
     
    // ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       setState(() {
    //       item++;
    //     });
    //     },
    //     child: Icon(
    //       Icons.add
    //     ),
    //     backgroundColor: Colors.redAccent,
    //   ),
  );

    }
}



