import 'package:flutter/material.dart';
import 'package:flutter_application_3/recipe_detail.dart';
import 'recipe.dart';

void main() {
  runApp(const JatimFood());
}

class JatimFood extends StatelessWidget {
  const JatimFood({Key? key}) : super(key: key);
  static const MaterialColor white = MaterialColor(
    0xFF0000FF,
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      488: Color(0xFF42A5F5),
      500: Color(0xFF2196F3),
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Makanan Jawa Timur',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Makanan Jawa Timur'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 4 kolom
          ),
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }


  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(
              height: 14.0,
            ),
            Text(recipe.label,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Palationo',
                ))
          ],
        ),
      ),
    );
  }
}
