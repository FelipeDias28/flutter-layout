import 'package:flutter/material.dart';
import 'package:shopping/pages/signup.page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Faz com que o teclado suba na frente da tela
      body: SingleChildScrollView(
        child: Container(
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
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .accentColor, // Cor do fundo do container
                  boxShadow: const [
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
                            children: [
                              Text(
                                "Welcome",
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              Text(
                                "Sign in to continue",
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
                          TextButton(
                            // Botão sem borda
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignupPage(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        // Somente para espaçamento entre os itens
                        height: 45.0,
                      ),
                      TextFormField(
                        // autofocus: true, // já abre a página selecionado
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          // decorações do input
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        ),
                        style: TextStyle(
                          // estilo do texto dentro do input, o que o usuário digita
                          color: Theme.of(context).primaryColor,
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
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        ),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        alignment: Alignment
                            .centerRight, // Alinha os itens dentro do container
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot your password?",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: const BorderRadius.all(
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
                    color: Theme.of(context).primaryColor,
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
                    color: Theme.of(context).primaryColor,
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
