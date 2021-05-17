import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CBTis 103',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Interfaz(),
    );
  }
}

class Interfaz extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Image.asset(
          "lib/assets/imagen/logo_system2.png", 
          height: 50.0, 
          width: 140.0,
        ),

        actions: <Widget>[
          Image.asset("lib/assets/imagen/msj2021.png", height: 10.0,),
          Image.asset("lib/assets/imagen/calendar.jpg", height: 10.0,),
          

          InkWell(
            child: Icon(
              Icons.dehaze,
              size: 40.0,
              semanticLabel: "Menus desplegables",
            ),
            
            onTap: () {},
          ),
          
          Icon(
            Icons.search,
            size: 40.0, 
            color: Colors.pink, 
            semanticLabel: "Buscar contenido en la WEB",
          ),
          
          
          Padding(//Aquí se aplica la clase "PADDING", Y Observen
                  //donde se manda a llamar la clase "Icon".
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.dehaze,
              size: 30.0,
              semanticLabel: "Menus desplegables",
            ),
          )
        ],
      ),
      body: Center(
        //child: Text('Programación'),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Control de Fauna Local",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    height: 150,
                    color: Colors.blue,
                    child: Center(
                      child: Image.asset("lib/assets/imagen/Lamia_Scale_logo.png", width: 100.0, height: 100.0,),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    height: 150,
                    color: Colors.green,
                    child: Center(
                      child: Image.asset("lib/assets/imagen/FairyTail-Emblema.png", width: 100.0, height: 100.0,),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    width: 120,
                    height: 150,
                    color: Colors.yellow,
                    child: Center(
                      child: Image.asset("lib/assets/imagen/saberthoot.png", width: 100.0, height: 100,),
                    ),
                  ),
                ),
                
              ],
            )
          ],
        ),
      )
    );
  }
}
