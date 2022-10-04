import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'portfolio web app',
        theme: ThemeData(primarySwatch: Colors.purple),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Tayyaba Afzal'),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const herosection(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '   PROJECTS',
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(height: 20),
                  ProjectSection(),
                  Text(
                    '   SKILLS',
                    style: TextStyle(fontSize: 40),
                  ),
                  SizedBox(height: 10),
                  SkillsSection()
                ],
              ),
            )));
  }
}

class herosection extends StatelessWidget {
  const herosection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 600),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'images/image1.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Text(
            'I am Tayyaba Afzal \n I write codes for mobile and web app',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width > 768 ? 50 : 30,
                color: Colors.white,
                backgroundColor: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}

class ProjectSection extends StatelessWidget {
  ProjectSection({super.key});
  final List<Map> projects = [
    {
      "title": "TIC TAC TOE",
      "url": "https://github.com/Tayyaba-Haris/tic-tac-toe",
      "image":
          "https://www.shutterstock.com/image-photo/kid-tictactoe-board-game-concept-600w-1441685093.jpg",
    },
    {
      "title": "contact app",
      "url": "https://github.com/Tayyaba-Haris/Contact-App",
      "image":
          "data:image/jpeg;base64,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"
    },
    {
      "title": "wallpaper app",
      "url": "https://github.com/Tayyaba-Haris/Wallpaper-app",
      "image":
          "data:image/jpeg;base64,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"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, crossAxisSpacing: 10, mainAxisSpacing: 10),
      children: projects
          .map((e) => Container(
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: GridTile(
                    child: Image.network(e["image"]),
                    header: GridTileBar(
                      title: Text(e["title"]),
                      backgroundColor: Theme.of(context).primaryColorDark,
                    ),
                    footer: GridTileBar(
                      title: TextButton.icon(
                          onPressed: () {
                            window.open(e["url"], "code link");
                          },
                          icon: Icon(
                            Icons.code,
                            color: Theme.of(context).primaryColorDark,
                          ),
                          label: Text(
                            "view code",
                            style: TextStyle(
                                color: Theme.of(context).primaryColorDark),
                          )),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }
}

class GenerateStars extends StatelessWidget {
  final int star;
  final String skillname;
  GenerateStars({required this.star, required this.skillname});
  @override
  Widget build(BuildContext context) {
    List<Widget> stars = [
      Container(
        width: 100,
        child: Text(
          skillname,
          style: const TextStyle(fontSize: 20),
        ),
      )
    ];
    for (var i = 1; i <= star; i++) {
      stars.add(Icon(Icons.star));
    }
    for (var i = star; i <= 10; i++) {
      stars.add(const Icon(Icons.star_border_outlined));
    }
    return Row(
      children: stars,
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            GenerateStars(star: 3, skillname: "react"),
            GenerateStars(star: 6, skillname: "HTML"),
            GenerateStars(star: 4, skillname: "FLUTTER"),
            GenerateStars(star: 7, skillname: "Java script"),
            GenerateStars(star: 6, skillname: "python"),
          ],
        ),
        if (MediaQuery.of(context).size.width > 946)
          Image.asset(
            'images/image2.png',
            fit: BoxFit.cover,
          ),
      ],
    );
  }
}
