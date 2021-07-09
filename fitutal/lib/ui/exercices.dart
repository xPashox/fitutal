import 'package:flutter/material.dart';

class Ejercicios extends StatefulWidget {
  Ejercicios({Key? key}) : super(key: key);

  @override
  _EjerciciosState createState() => _EjerciciosState();
}

class _EjerciciosState extends State<Ejercicios> {
  @override
  Widget build(BuildContext context) {
    final title = Container(
      padding: EdgeInsets.all(15),
      child: Text('Ejercicios en casa',
          style: TextStyle(
              color: Colors.lightBlue[700],
              fontWeight: FontWeight.bold,
              fontSize: 25),
          textAlign: TextAlign.left),
    );
    final cardCuerpoCompleto = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Ejercicios de cuerpo completo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900])),
              subtitle: Text(
                  'Ejercicios con los que entrenaras una gran cantidad de músculos de tu cuerpo',
                  style: TextStyle()),
              leading: Icon(
                Icons.accessibility,
                color: Colors.lightBlue[700],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EjerciciosCuerpoCompleto())),
                  child: Text('Ver más')),
            ],
          ),
        ],
      ),
    );
    final cardParteSuperior = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Ejercicios parte superior del cuerpo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900])),
              subtitle: Text(
                  'Ejercicios con los que entrenaras todos los músculos superiores como abdomen, brazos, espalda y hombros',
                  style: TextStyle()),
              leading: Icon(
                Icons.airline_seat_flat_angled,
                color: Colors.lightBlue[700],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EjerciciosParteSuperior())),
                  child: Text('Ver más')),
            ],
          ),
        ],
      ),
    );
    final cardParteInferior = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Ejercicios parte inferior del cuerpo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900])),
              subtitle: Text(
                  'Ejercicios con los que entrenaras todos los músculos inferiores como piernas y gluteos',
                  style: TextStyle()),
              leading: Icon(
                Icons.airline_seat_legroom_reduced_outlined,
                color: Colors.lightBlue[700],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EjerciciosParteInferior())),
                  child: Text('Ver más')),
            ],
          ),
        ],
      ),
    );
    final cardCardio = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Ejercicios de cardio',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900])),
              subtitle: Text(
                  'Ejercicios con los que podrás mejorar tu resistencia física y tu sistema cardiovascular',
                  style: TextStyle()),
              leading: Icon(
                Icons.sports,
                color: Colors.lightBlue[700],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EjerciciosCardio())),
                      },
                  child: Text('Ver más')),
            ],
          ),
        ],
      ),
    );
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: ListView(
            children: <Widget>[
              title,
              cardCuerpoCompleto,
              cardParteSuperior,
              cardParteInferior,
              cardCardio
            ],
          ),
        ));
  }
}

class EjerciciosCuerpoCompleto extends StatefulWidget {
  EjerciciosCuerpoCompleto({Key? key}) : super(key: key);

  @override
  _EjerciciosCuerpoCompletoState createState() =>
      _EjerciciosCuerpoCompletoState();
}

class _EjerciciosCuerpoCompletoState extends State<EjerciciosCuerpoCompleto> {
  @override
  Widget build(BuildContext context) {
    final title = Container(
      padding: EdgeInsets.all(15),
      child: Text('Ejercicios en casa > Ejercicios Cuerpo Completo',
          style: TextStyle(
              color: Colors.lightBlue[700],
              fontWeight: FontWeight.bold,
              fontSize: 25),
          textAlign: TextAlign.left),
    );
    final cardEjercicio = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Entrenamiento funcional de 15 minutos',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900])),
              subtitle: Text('Duración: 15 min/20 min - Sumas 20 ptos',
                  style: TextStyle()),
              leading: Icon(
                Icons.accessibility,
                color: Colors.lightBlue[700],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () => {
                        Navigator.pushNamed(context, '/'),
                      },
                  child: Text('Iniciar entrenamiento')),
            ],
          ),
        ],
      ),
    );
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: ListView(
            children: <Widget>[
              title,
              cardEjercicio,
              cardEjercicio,
              cardEjercicio,
              cardEjercicio,
              cardEjercicio,
              cardEjercicio,
              cardEjercicio
            ],
          ),
        ));
  }
}

class EjerciciosParteSuperior extends StatefulWidget {
  EjerciciosParteSuperior({Key? key}) : super(key: key);

  @override
  _EjerciciosParteSuperiorState createState() =>
      _EjerciciosParteSuperiorState();
}

class _EjerciciosParteSuperiorState extends State<EjerciciosParteSuperior> {
  @override
  Widget build(BuildContext context) {
    final title = Container(
      padding: EdgeInsets.all(15),
      child: Text('Ejercicios en casa > Ejercicios Parte Superior',
          style: TextStyle(
              color: Colors.lightBlue[700],
              fontWeight: FontWeight.bold,
              fontSize: 25),
          textAlign: TextAlign.left),
    );
    final cardEjercicioAbdominal = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Entrenamiento intenso de abdominales',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900])),
              subtitle: Text('Duración: 10 min/15 min - Sumas 30 ptos',
                  style: TextStyle()),
              leading: Icon(
                Icons.airline_seat_flat_angled,
                color: Colors.lightBlue[700],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () => {
                        Navigator.pushNamed(context, '/'),
                      },
                  child: Text('Iniciar entrenamiento')),
            ],
          ),
        ],
      ),
    );
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: ListView(
            children: <Widget>[
              title,
              cardEjercicioAbdominal,
              cardEjercicioAbdominal,
              cardEjercicioAbdominal,
              cardEjercicioAbdominal,
              cardEjercicioAbdominal
            ],
          ),
        ));
  }
}

class EjerciciosParteInferior extends StatefulWidget {
  EjerciciosParteInferior({Key? key}) : super(key: key);

  @override
  _EjerciciosParteInferiorState createState() =>
      _EjerciciosParteInferiorState();
}

class _EjerciciosParteInferiorState extends State<EjerciciosParteInferior> {
  @override
  Widget build(BuildContext context) {
    final title = Container(
      padding: EdgeInsets.all(15),
      child: Text('Ejercicios en casa > Ejercicios Parte Inferior',
          style: TextStyle(
              color: Colors.lightBlue[700],
              fontWeight: FontWeight.bold,
              fontSize: 25),
          textAlign: TextAlign.left),
    );
    final cardEjercicioPiernas = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Entrenamiento de piernas',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900])),
              subtitle: Text('Duración: 40 min/50 min - Sumas 100 ptos',
                  style: TextStyle()),
              leading: Icon(
                Icons.airline_seat_legroom_reduced_outlined,
                color: Colors.lightBlue[700],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () => {
                        Navigator.pushNamed(context, '/'),
                      },
                  child: Text('Iniciar entrenamiento')),
            ],
          ),
        ],
      ),
    );
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: ListView(
            children: <Widget>[
              title,
              cardEjercicioPiernas,
              cardEjercicioPiernas,
              cardEjercicioPiernas,
              cardEjercicioPiernas
            ],
          ),
        ));
  }
}

class EjerciciosCardio extends StatefulWidget {
  EjerciciosCardio({Key? key}) : super(key: key);

  @override
  _EjerciciosCardioState createState() => _EjerciciosCardioState();
}

class _EjerciciosCardioState extends State<EjerciciosCardio> {
  @override
  Widget build(BuildContext context) {
    final title = Container(
      padding: EdgeInsets.all(15),
      child: Text('Ejercicios en casa > Ejercicios de Cardio',
          style: TextStyle(
              color: Colors.lightBlue[700],
              fontWeight: FontWeight.bold,
              fontSize: 25),
          textAlign: TextAlign.left),
    );
    final cardEjercicioCardio = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 20,
      child: Column(
        children: <Widget>[
          ListTile(
              contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
              title: Text('Cardio quema grasas de 20 min',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue[900])),
              subtitle: Text('Duración: 20 min/25 min - Sumas 30 ptos',
                  style: TextStyle()),
              leading: Icon(
                Icons.sports,
                color: Colors.lightBlue[700],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () => {
                        Navigator.pushNamed(context, '/'),
                      },
                  child: Text('Iniciar entrenamiento')),
            ],
          ),
        ],
      ),
    );
    return new Scaffold(
        backgroundColor: Colors.grey[200],
        body: Center(
          child: ListView(
            children: <Widget>[
              title,
              cardEjercicioCardio,
              cardEjercicioCardio,
              cardEjercicioCardio,
              cardEjercicioCardio
            ],
          ),
        ));
  }
}
