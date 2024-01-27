import 'package:flutter/material.dart';

import 'src/utils/theme/theme.dart';

void main() {
  runApp(kkk());
}

MaterialApp kkk() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: TAppTheme.lightTheme,

    darkTheme: TAppTheme.darkTheme,
    themeMode: ThemeMode.light,
    home: AppHome(),
  );
}

class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text(".appable/"),
        leading: const Icon(Icons.video_collection_outlined),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              "Heading",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "Sub-heading",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              "Paragraph",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Eleveted Button")),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 28,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue),
                child: Center(
                    child: Text(
                  "Eleveted Button",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 100,
                child: OutlinedButton(
                    onPressed: () {}, child: Text("Outline Button"))),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(hintText: "Password"),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Card(
                  // color: Colors.teal,
                  ),
            )
          ],
        ),
      ),
    );
  }
}
