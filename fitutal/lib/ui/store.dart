import 'package:flutter/material.dart';

class Tienda extends StatefulWidget {
  Tienda({Key? key}) : super(key: key);

  @override
  _TiendaState createState() => _TiendaState();
}

class _TiendaState extends State<Tienda> {
  @override
  Widget build(BuildContext context) {
    final title = Container(
        padding: EdgeInsets.all(15),
        child: ListTile(
          title: Text('Tienda de canje de puntos',
              style: TextStyle(
                  color: Colors.lightBlue[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
          leading: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black54,
            size: 40,
          ),
        ));
    final button = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text(
            'Sube de nivel',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          color: Colors.lightBlue[700],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () => {},
        ),
      ),
    );

    final beneficio1 = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('1 pasaje de bus                  50 puntos',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900])),
              subtitle: Text(
                  'Obtén un pasaje de bus gratuito                           Nivel 1',
                  style: TextStyle()),
              leading: Icon(
                Icons.bus_alert,
                color: Colors.lightBlue[700],
              )),
        ],
      ),
    );
    final beneficio2 = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('50 impresiones gratis      100 puntos',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900])),
              subtitle: Text(
                  'Obtén 50 hojas de impresiones gratis                 Nivel 1',
                  style: TextStyle()),
              leading: Icon(
                Icons.local_print_shop,
                color: Colors.lightBlue[700],
              )),
        ],
      ),
    );
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: ListView(
            children: <Widget>[
              title,
              button,
              beneficio1,
              beneficio2,
              beneficio1,
              beneficio2,
              beneficio1
            ],
          ),
        ));
  }
}

class BeneficiosCanjeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
