import 'package:flutter/material.dart';

// HomePage è un widget con stato che rappresenta la pagina principale dell'app.
class HomePage extends StatefulWidget {

  // Il metodo createState ritorna un'istanza della classe HomePageState.
  // Questo metodo viene chiamato da Flutter per costruire lo stato del widget HomePage.
  @override
  State<StatefulWidget> createState() => HomePageState();

}

// HomePageState è una classe che mantiene lo stato del widget HomePage.
class HomePageState extends State<HomePage> {
  // counter è una variabile di stato che tiene traccia del numero di persone in lista d'attesa.
  int counter = 0;

  // increment è un metodo che incrementa il contatore quando viene chiamato.
  void increment() {
    // setState notifica a Flutter che lo stato del widget è cambiato.
    // Quando viene chiamato, Flutter ricostruisce il widget per riflettere i cambiamenti nello stato.
    setState(() {
      counter ++;
    });

    print("Incremento cliccato: $counter");
  }

  // Il metodo build descrive l'interfaccia utente del widget in termini di altri widget più semplici.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista d'attesa"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Text(
            "Persone in lista d'attesa: $counter",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
        ),
      ),
      // Un FloatingActionButton è un pulsante che viene visualizzato sopra l'interfaccia utente.
      // Quando viene premuto, chiama il metodo increment.
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
