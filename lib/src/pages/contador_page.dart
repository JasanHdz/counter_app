import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  @override
  createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  final _style = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Número de tabs',
                style: _style,
              ),
              Text(
                '$_conteo',
                style: _style,
              ),
            ],
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _restart),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _substract),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
      ],
    );
  }

  void _restart() {
    setState(() => _conteo = 0);
  }

  void _add() {
    setState(() => _conteo++);
  }

  void _substract() {
    setState(() => _conteo--);
  }
}
