import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Simple App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Simple App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to My App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Adds space between Text and ElevatedButton
            ElevatedButton(
              onPressed: () {
                print('Button clicked!');
              },
              child: Text('Click Me'),
            ),
            SizedBox(height: 20), // Adds space between ElevatedButton and Image
            Image.network(
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gettyimages.com%2Fcreative-images%2Fstock-photos&psig=AOvVaw2KQSLJEKankxN_hpE5Kadf&ust=1726487244586000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCLi3uKvwxIgDFQAAAAAdAAAAABAE', // Replace with a valid image URL
              width: 200, // Optional: Adjust the width as needed
              height: 200, // Optional: Adjust the height as needed
            ),
          ],
        ),
      ),
    );
  }
}
