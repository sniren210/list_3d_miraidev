import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List A 3D model'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ModelPages(
                      desc: 'Segitiga 3D',
                      src: 'assets/segitiga.glb',
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.redAccent,
                child: const Center(
                  child: Text(
                    'Segitiga 3D',
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ModelPages(
                      desc: 'Globe 3D',
                      src: 'assets/GLOBE.glb',
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.blueAccent,
                child: const Center(
                  child: Text(
                    'Globe 3D',
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ModelPages(
                      desc: 'Cars NSX 3D',
                      src: 'assets/NSX.glb',
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.cyanAccent,
                child: const Center(
                  child: Text(
                    'Cars NSX 3D',
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ModelPages(
                      desc: 'tesla cars 3D',
                      src: 'assets/tesla.glb',
                    ),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.limeAccent,
                child: const Center(
                  child: Text(
                    'tesla cars 3D',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ModelPages extends StatelessWidget {
  final String src;
  final String desc;

  const ModelPages({
    super.key,
    required this.src,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return ModelViewer(
      src: src,
      alt: desc,
      ar: true,
      autoRotate: true,
      cameraControls: true,
      backgroundColor: Colors.black,
    );
  }
}
