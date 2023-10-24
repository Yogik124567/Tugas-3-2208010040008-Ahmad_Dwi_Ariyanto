import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/lion.jpg",
            width: 100,
          ),
          Image.network(
            "https://images.unsplash.com/photo-1672106882160-7bb288a25c90?auto=format&fit=crop&q=80&w=1472&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            width: 200,
          ),
          Image.network(
            "https://images.unsplash.com/photo-1695565469631-8e636d3b993f?auto=format&fit=crop&q=80&w=1528&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            width: 250,
          ),
        ],
      ),
    );
  }
}
