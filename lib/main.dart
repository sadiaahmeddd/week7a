import 'dart:nativewrappers/_internal/vm/lib/convert_patch.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  // TODO: We'll build our async function here in class!
  

  Future<void> dotheThing() async(){
  print("function called");
  string url = 'https://dummyjson.com/carts';
  var response = await http.get( Uri.parse(url));
  if(response.statusCode == 200){
    var jsonResponse = JsonDecoder(response.body);
    print(response);
  }
   print("Error ${response.statusCode}");
  

  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My Cool App")),
        body: Column(
          spacing: 20,
          children: [
            ElevatedButton(
              onPressed: () async {
                // TODO: We'll make this async and call our function
                doTheThing();
                print("Button pressed!");
              },
              child: Text("Get Some Data"),
            ),
            Expanded(
              child: Container(
                // In class we'll swap this Container for an Expanded widget
                // and see why that's better than hardcoding a height
              ),
            ),
          ],
        ),
    );
  }
}