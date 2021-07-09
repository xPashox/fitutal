import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<Widget> lista = [
  Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      elevation: 15,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.today,
              color: Colors.lightBlue[300],
              size: 50,
            ),
            Text('Avance diario: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                )),
            Text('29 de mayo del 2021',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              child: CircularProgressIndicator(
                value: 0.7,
                color: Colors.lightBlue[300],
                strokeWidth: 15.0,
              ),
              height: 90.0,
              width: 90.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Pasos: 6302',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            Text('1.2 km',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
          ],
        ),
      )),
  Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.calendar_view_week,
              color: Colors.lightBlue[600],
              size: 50,
            ),
            Text('Avance semanal: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                )),
            Text('24 al 30 de mayo',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              child: CircularProgressIndicator(
                value: 0.4,
                color: Colors.lightBlue[600],
                strokeWidth: 15.0,
              ),
              height: 90.0,
              width: 90.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Pasos: 41346',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            Text('9.3 km',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
          ],
        ),
      )),
  Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.calendar_today,
              color: Colors.lightBlue[900],
              size: 50,
            ),
            Text('Avance mensual: ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                )),
            Text('Mayo del 2021',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              child: CircularProgressIndicator(
                value: 0.6,
                color: Colors.lightBlue[900],
                strokeWidth: 15.0,
              ),
              height: 90.0,
              width: 90.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text('Pasos: 346340',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            Text('20.7 km',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12)),
          ],
        ),
      )),
];

class Summary extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SummaryState();
  }
}

class _SummaryState extends State<Summary> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final title = Container(
        padding: EdgeInsets.all(15),
        child: ListTile(
          title: Text('FitUtal - Inicio',
              style: TextStyle(
                  color: Colors.lightBlue[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
          leading: Icon(
            Icons.accessibility,
            color: Colors.black54,
            size: 40,
          ),
        ));
    final carrusel = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            items: lista,
            options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 1.1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: lista.map((url) {
              int index = lista.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
        ]);

    return new Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: ListView(
          children: <Widget>[
            title,
            SizedBox(
              height: 70.0,
            ),
            carrusel
          ],
        ),
      ),
    );
  }
}
