import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'list_page.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('cadastro'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _controller,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'preencher o campo';
                      }
                      return null;
                    },
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        Navigator.pop(context, _controller.text);
                      });
                    }
                  },
                  child: const Text('salvar'),
                )
              ],
            ),
          ),
        ));
  }
}
