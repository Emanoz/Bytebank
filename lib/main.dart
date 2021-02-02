import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencias(),
          appBar: AppBar(title: Text('Transferências')),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
      ),
    );

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia('1000', 100.0)),
        ItemTransferencia(Transferencia('2000', 200.0)),
        ItemTransferencia(Transferencia('3000', 300.0)),
        ItemTransferencia(Transferencia('4000', 400.0)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final String numeroConta;

  Transferencia(this.numeroConta, this.valor);
}
