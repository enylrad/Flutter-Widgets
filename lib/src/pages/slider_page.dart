import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  static final route = '/slider';
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 100;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _createSlider(),
            _createCheckBox(),
            _createSwitch(),
            Expanded(child: _createImage()),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      value: _valueSlider,
      min: 10,
      max: 400,
      onChanged: (_blockCheck) ? null : (value) {
        setState(() {
            _valueSlider = value;
        });
      },
    );
  }

  Widget _createImage() {
    return Image(
      image: NetworkImage(
          'https://avatars3.githubusercontent.com/u/9083245?s=460&v=4'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _createCheckBox() {
    return CheckboxListTile(
      value: _blockCheck,
      title: Text('Bloquear Imagen'),
      onChanged: (value) {
        setState(() {
          _blockCheck = value;
        });
      },
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
      value: _blockCheck,
      title: Text('Bloquear Imagen'),
      onChanged: (value) {
        setState(() {
          _blockCheck = value;
        });
      },
    );
  }
}
