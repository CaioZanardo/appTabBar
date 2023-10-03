import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarApp(),
    );
  }
}

class TabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "App Tab Bar",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Pessoal",
                icon: Icon(Icons.person, color: Colors.white),
              ),
              Tab(
                text: "Formação",
                icon: Icon(Icons.school, color: Colors.white),
              ),
              Tab(
                text: "Experiência",
                icon: Icon(Icons.work, color: Colors.white),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PersonalTab(),
            EducationTab(),
            ExperienceTab(),
          ],
        ),
      ),
    );
  }
}

class PersonalTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          " Nome: Caio Zanardo \n Data de Nascimento: 26/01/1996 \n Estado Civil: Casado \n Dependentes: 2",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class EducationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          "Cursando Análise de Sistemas para Internet na Faculdade de Informática e Administração Paulista (FIAP) - 2022/2023",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ExperienceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Text(
          "Analista SRE / Middleware \nAdministração de servidores Weblogic, Linux, K8s, gerenciamento de incidentes de falha, sintomas, solução de problemas, remediação, causa raiz e monitoramento.",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
