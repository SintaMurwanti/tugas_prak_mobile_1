import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nimController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas Praktikum Pemrograman Mobile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Sinta Murwanti',
                ),
              ),
              SizedBox(height: 20),
              Text(
                'NIM:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: _nimController,
                decoration: InputDecoration(
                  hintText: '123210036',
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('Tombol 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {

                    },
                    child: Text('Tombol 2'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Gambar:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 300,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    final imageName = 'image${index + 1}.png';
                    return Image.asset(
                      'images/$imageName', // Sesuaikan dengan nama gambar di direktori 'images'
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
