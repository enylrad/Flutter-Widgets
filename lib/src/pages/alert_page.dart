import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  static final route = '/alert';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.black,
          textColor: Colors.white,
          shape: StadiumBorder(),
          child: Text('Mostrar alerta'),
          onPressed: () {
            _showAlert(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text('Titulo'),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              Text('Este es el contenido de la alerta'),
              FlutterLogo(
                size: 100.0,
              )
            ]),
            actions: [
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancel')),
              FlatButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Ok')),
            ],
          );
        });
  }
}
