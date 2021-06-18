
import 'package:flutter/material.dart';
import './secciones/home.dart';
import './secciones/desafios.dart';
import './secciones/perfil.dart';
import './secciones/ejercicios.dart';
import './secciones/canjePuntos.dart';

void main() {
  runApp(
    MaterialApp(
        home: Login(),
        routes: <String, WidgetBuilder>{
          '/login': (BuildContext context) => Login(),
          '/home': (BuildContext context) => Inicio(),
          '/desafios': (BuildContext context) => Desafios(),
          '/perfil': (BuildContext context) => Perfil(),
          '/perfil/historial': (BuildContext context) => Historial(),
          '/ejercicios': (BuildContext context) => Ejercicios(),
          '/ejercicios/cuerpoCompleto': (BuildContext context) => EjerciciosCuerpoCompleto(),
          '/ejercicios/parteSuperior': (BuildContext context) => EjerciciosParteSuperior(),
          '/ejercicios/parteInferior': (BuildContext context) => EjerciciosParteInferior(),
          '/ejercicios/cardio': (BuildContext contex) => EjerciciosCardio(),
          '/tienda': (BuildContext context) => Tienda(),
          '/tienda/beneficios': (BuildContext context) => BeneficiosCanjeados() 
        },
    )
  );
}
class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final iniciar= Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
        Text('Iniciar Sesión',
        style: TextStyle(color: Colors.lightBlue[700], fontWeight: FontWeight.bold, fontSize:25))
      ],),
      );

    final inputEmail= Padding(
      padding: EdgeInsets.only(bottom:10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText:'Ingresa tu correo',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
            ),
            focusColor: Colors.lightBlue[300],
            hoverColor: Colors.lightBlue[300]
        )
      )
      );

    final inputPassword= Padding(
      padding: EdgeInsets.only(bottom:20),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
          hintText:'Ingresa tu contraseña',
          contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0)
            ),
            focusColor: Colors.lightBlue[300],
            hoverColor: Colors.lightBlue[300]
        ),
        )
    );
    
    final buttonLogin= Padding(
      padding: EdgeInsets.only(bottom:5),
      child: ButtonTheme(
        height: 56,
        child: RaisedButton(
          child: Text('Login', style: TextStyle(color: Colors.white, fontSize:20),),
          color: Colors.lightBlue[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          ),
        onPressed: () => {},
      ),),
    );

    final buttonOlvidaPassword= FlatButton(
      child: Text(
        '¿Olvidaste tu contraseña?',
        style: TextStyle(color:Colors.lightBlue[600], fontSize: 16),
        ),
      onPressed: () =>{},
      );

      
    return new Scaffold(
      backgroundColor: Colors.grey[200],
       body: Center (
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal:20),
          children: <Widget>[
            iniciar,
            inputEmail,
            inputPassword,
            buttonLogin,
            buttonOlvidaPassword
          ],
        ),
      ),
    );
  }
}
