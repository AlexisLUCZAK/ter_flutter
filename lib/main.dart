import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TER',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("TER"),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 5,),
            const Text("Application crée par Alexis LUCZAK pour tester la performance entre les framworks", textAlign: TextAlign.justify,),
            const SizedBox(height: 5,),
            const Text("Voici la liste des différentes frameworks comparés:"),
            const SizedBox(height: 5,),
            const Text("• Flutter"),
            const Text("• React Native"),
            const Text("• Ionic"),
            const Divider(thickness: 2,),
            const Text("Liste d'items servant pour les tests"),
            Expanded(
              child: ListView.builder(
                itemCount: 1000,
                itemBuilder: (context, index){
                  return Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Image(
                              image: const AssetImage("./images/fast_2.png"),
                              width: MediaQuery.of(context).size.width * 0.7,
                            ),
                          )
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Team FAST"),
                                SizedBox(height: 5,),
                                Text("À jamais dans mon coeur !")
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                  );
                }
              )
            )
          ],
        ),
      ),
    );
  }
}
