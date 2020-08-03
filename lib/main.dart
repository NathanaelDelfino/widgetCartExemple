import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Card Exemplo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // _widgetCard1() {
  //   return Container(
  //     padding: EdgeInsets.all(10),
  //     child: Center(
  //       child: Column(
  //         children: <Widget>[
  //           Card(
  //             child: Container(
  //               padding: EdgeInsets.all(20.0),
  //               child: Column(
  //                 children: <Widget>[
  //                   Text('Nathanael teste'),
  //                   Text('Vamos testar o máximo')
  //                 ],
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // _widgetCard2() {
  //   return Container(
  //     padding: EdgeInsets.all(10.0),
  //     child: Center(
  //       child: Column(
  //         children: <Widget>[
  //           Card(
  //             color: Colors.amber,
  //             child: Container(
  //               padding: EdgeInsets.all(32),
  //               child: Column(
  //                 children: <Widget>[
  //                   Image.network(
  //                       "https://flutter.io/images/catalog-widget-placeholder.png"),
  //                   Divider(),
  //                   Text('Flutter - 2019')
  //                 ],
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // _widgetCard3() {
  //   return Container(
  //     padding: EdgeInsets.all(10),
  //     child: Center(
  //       child: Column(
  //         children: <Widget>[
  //           Card(
  //             color: Colors.grey[100],
  //             child: Container(
  //               padding: EdgeInsets.all(10),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.center,
  //                 children: <Widget>[
  //                   Container(
  //                     padding: EdgeInsets.all(20),
  //                     child: Image.network(
  //                       "https://flutter.io/images/catalog-widget-placeholder.png",
  //                       height: 150,
  //                       width: double.infinity,
  //                     ),
  //                   ),
  //                   Text(
  //                     "Flutter - 2019 - Nathanael teste flutter",
  //                     maxLines: 1,
  //                     overflow: TextOverflow.ellipsis,
  //                     style: TextStyle(
  //                       fontSize: 20,
  //                     ),
  //                   ),
  //                   Text(
  //                     "http://nathanaeldelfino.github.io/",
  //                     style: TextStyle(fontSize: 14),
  //                   ),
  //                   // ButtonTheme.bar(
  //                   //   child: ButtonBar(
  //                   //     children: <Widget>[
  //                   //       FlatButton(
  //                   //         onPressed: () {},
  //                   //         child: const Text('Detalhes'),
  //                   //       )
  //                   //     ],
  //                   //   ),
  //                   // )
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  _widgetCard4() {
    return Container(
      padding: EdgeInsets.all(5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.pink,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 120,
              ),
              title: Text(
                'Titulo Teste A',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                'subtitulo',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                      onPressed: () {},
                      child: const Text('Edit',
                          style: TextStyle(color: Colors.white))),
                  FlatButton(
                      onPressed: () {},
                      child: const Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _widgetCard4(),
            _widgetCard4(),
            _widgetCard4(),
            _widgetCard4(),
            _widgetCard4(),
          ],
        ),
      ),
    );
  }
}
