import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Informe o e-mail',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Você precisa digitar algum nome';
                    }
                    if (value != "Wanderson") {
                      return "Usuário inválido";
                    } else {
                      return null;
                    }
                  }),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Informe senha',
                ),
                validator: (value) {
                  if (value!.length <= 4) {
                    return 'A sua senha precisa ter mais que 4 caracteres';
                  }
                  if(value!="maikon123"){
                    return 'Senha inválida';
                  }
                  return null;
                },
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Center(
                child: OutlinedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()){
                      Navigator.pushNamed(context, '/homepage');
                    } 
                  },
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
