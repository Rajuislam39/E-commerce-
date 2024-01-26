import 'package:flutter/material.dart';






void main(){
  runApp(kkk());
}
MaterialApp kkk(){
  return MaterialApp(
    debugShowCheckedModeBanner: false,
home: AppHome(),
  );
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(".appable/"),leading: const Icon(Icons.video_collection_outlined),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},child: const Icon(Icons.add_shopping_cart_outlined),
      ),
      body: ListView(
        children: [
          const Text("Heading")
        ],
      ),
    );
  }
}
