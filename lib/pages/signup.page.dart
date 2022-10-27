import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: // Somente a App BAr, permite que tenha a opção de voltar a página anterior
          AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        elevation:
            0, // O quão elevado da tela, parece que esta mais próximo do usuário
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFF5F5F5),
          padding: const EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white, // Cor do fundo do container
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 2.0), // quantidade de sombra, projeção
                      blurRadius: 5, // o quanto a sombra se expande
                      spreadRadius: 1, // intensidade
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 70.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Signup",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 45.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: TextButton(
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        // dar espaçamento abaixo do botão
                        height: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
