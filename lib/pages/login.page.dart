import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Faz com que o teclado suba na frente da tela
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
                height: 450,
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text(
                                "Welcome",
                                style: TextStyle(
                                  // Estilização dos textos
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text("Sign in to continue"),
                            ],
                          ),
                          TextButton(
                            // Botão sem borda
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const SizedBox(
                        // Somente para espaçamento entre os itens
                        height: 45.0,
                      ),
                      TextFormField(
                        autofocus: true, // já abre a página selecionado
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          // decorações do input
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        ),
                        style: const TextStyle(
                          // estilo do texto dentro do input, o que o usuário digita
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        // Somente para espaçamento entre os itens
                        height: 10.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: true, // deixa a senha escondida
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
                      Container(
                        alignment: Alignment
                            .centerRight, // Alinha os itens dentro do container
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot your password?",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
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
                            "Sign in",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 15,
                  bottom: 15,
                ),
                child: const Text(
                  "- OR -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0, // espessura da borda
                    color: Colors.blue,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: TextButton(
                  child: Row(
                    children: [
                      SizedBox(
                        // Utilizado somente para setar altura e largura para a imagem
                        width: 100,
                        height: 24,
                        child: Image.asset(
                          "assets/facebook.png",
                        ),
                      ),
                      const Text("Sign In with Facebook"),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0, // espessura da borda
                    color: Colors.blue,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: TextButton(
                  child: Row(
                    children: [
                      SizedBox(
                        // Utilizado somente para setar altura e largura para a imagem
                        width: 100,
                        height: 24,
                        child: Image.asset(
                          "assets/google.png",
                        ),
                      ),
                      const Text("Sign In with Google"),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}