import 'package:flutter/material.dart';

class Cardview extends StatelessWidget {
  const Cardview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tarjeta Interactiva'),
        ),
        body: Column(
          children: [
            Card(
            elevation: 5.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Esquinas redondeadas
            ),
            child: InkWell(
              onTap: () {
                // Lógica al hacer clic
                print('¡La tarjeta ha sido tocada!');
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('¡Tocaste la tarjeta!')),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: ListTile(
                  leading: Icon(Icons.person, size: 40, color: Colors.blue),
                  title: Text(
                    'Perfil de Usuario',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Toca para ver más información.'),
                ),
              ),
            ),
          ),
          Card(
            elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min ,
                  children: const <Widget>[
                    Text(
                      'Tarjeta Sencilla',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8,),
                    Text('Este es el contenido de la tarjeta')
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}