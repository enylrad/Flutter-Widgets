import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  static final route = '/card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: _listCards(),
    );
  }

  ListView _listCards() {
    return ListView(
      children: [
        _cardTypeOne(),
        SizedBox(height: 30.0),
        _cardTypeTwo(),
        SizedBox(height: 30.0),
        _cardTypeOne(),
        SizedBox(height: 30.0),
        _cardTypeTwo(),
        SizedBox(height: 30.0),
        _cardTypeOne(),
        SizedBox(height: 30.0),
        _cardTypeTwo(),
        SizedBox(height: 30.0),
        _cardTypeOne(),
        SizedBox(height: 30.0),
        _cardTypeTwo(),
        SizedBox(height: 30.0),
        _cardTypeOne(),
        SizedBox(height: 30.0),
        _cardTypeTwo(),
        SizedBox(height: 30.0),
        _cardTypeOne(),
        SizedBox(height: 30.0),
        _cardTypeTwo(),
        SizedBox(height: 30.0),
        _cardTypeOne(),
        SizedBox(height: 30.0),
        _cardTypeTwo(),
        SizedBox(height: 30.0),
        _cardTypeOne(),
        SizedBox(height: 30.0),
        _cardTypeTwo(),
        SizedBox(height: 30.0)
      ],
      padding: EdgeInsets.all(10.0),
    );
  }

  Widget _cardTypeOne() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              title: Text('Soy el titulo de esta tarjeta'),
              subtitle: Text(
                  'Soy el subtitulo de esta tarjetaSoy el subtitulo de esta tarjetaSoy el subtitulo de esta tarjetaSoy el subtitulo de esta tarjetaSoy el subtitulo de esta tarjetaSoy el subtitulo de esta tarjetaSoy el subtitulo de esta tarjeta')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('Ok'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTypeTwo() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 2,
                  blurRadius: 10.0,
                  offset: Offset(2.0, 10.0))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: card,
        ));
  }

  final card = Container(
    child: Column(
      children: [
        FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://estaticos.muyinteresante.es/media/cache/1140x_thumb/uploads/images/gallery/59c4f5655bafe82c692a7052/gato-marron_0.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover),
        Container(padding: EdgeInsets.all(10.0), child: Text('No se que poner'))
      ],
    ),
  );
}
