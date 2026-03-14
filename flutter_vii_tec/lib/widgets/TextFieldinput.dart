import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  const TextFieldInput({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Demostración de cómo obtener entrada de datos';

  return Scaffold(
    appBar: AppBar(
      title: const Text(appTitle),
    ),
    body: const MyCustomerForm(),
  );
  }
}

class MyCustomerForm extends StatefulWidget {
    const MyCustomerForm({super.key});
    @override
  State<StatefulWidget> createState() => _MyCustomerFormState();
}

class _MyCustomerFormState extends State<MyCustomerForm> {
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar entrada de texto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: myController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context, 
            builder: (context) {
              return AlertDialog(
                content: Text(myController.text),
              );
            }
          );
        },
        tooltip: 'Muéstrame el valor!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}

