class Recipe {
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'Bakso Malang',
      'assets/Bakso Malang.jpg',
      4,
      [
        Ingredient(500, 'gr', 'Daging Sapi'),
        Ingredient(2, 'butir', 'Telur Ayam'),
        Ingredient(2, 'siung', 'Bawang Putih'),
      ],
    ),
    Recipe(
      'Gethuk Lindri',
      'assets/gethuk lindri.jpg',
      10,
      [
        Ingredient(500, 'gr', 'Singkong')],
    ),
    Recipe(
      'Lontong Balap',
      'assets/lontong balap.jpg',
      5,
      [
        Ingredient(200, 'gr', 'Lontong'),
        Ingredient(100, 'ml', 'Kuah Bening'),
      ],
    ),
    Recipe(
      'Lontong Kupang',
      'assets/lontong kupang.jpg',
      5,
      [
        Ingredient(250, 'gr', 'Kerang Kupang'),
        Ingredient(2, 'cm', 'Lengkuas'),
        Ingredient(2, 'liter', 'Air'),
      ],
    ),
    Recipe(
      'Nasi Krawu',
      'assets/nasi krawu.jpg',
      20,
      [
        Ingredient(500, 'gr', 'Daging Sapi'),
        Ingredient(3, 'lembar', 'Daun Salam'),
        Ingredient(1, 'sdm', 'Ketumbar Bubuk'),
        Ingredient(5, 'butir', 'Bawang Merah'),
      ],
    ),
    Recipe(
      'Nasi Pecel',
      'assets/nasi pecel.jpg',
      10,
      [
        Ingredient(200, 'gr', 'Kacang Tanah'),
        Ingredient(1, '', 'Sayuran Pecel'),
        Ingredient(3, 'buah', 'Cabai Merah'),
      ],
    ),
     Recipe(
      'Rawon',
      'assets/Rawon.jpg',
      5,
      [
        Ingredient(3, 'sdm', 'Minyak Goreng'),
        Ingredient(5, 'ons', 'Keluwek'),
        Ingredient(2, 'cm', 'Lengkuas'),
      ],
    ),
    Recipe(
      'Rujak Cingur',
      'assets/rujak cingur.jpg',
      2,
      [
        Ingredient(250, 'gr', 'Cingur'),
        Ingredient(2, 'buah', 'Tempe'),
        Ingredient(2, 'batang', 'Daun Melinjo'),
        ],
    ),
    Recipe(
      'Sate Madura',
      'assets/Sate Madura.jpeg',
      8,
      [
        Ingredient(500, 'gr', 'Daging Sapi'),
        Ingredient(1, 'sdt', 'Garam'),
      ],
    ),
    Recipe(
      'Soto Lamongan',
      'assets/soto lamongan.jpg',
      5,
      [
        Ingredient(250, 'gr', 'Daging Sapi'),
        Ingredient(2, 'cm', 'Jahe'),
        Ingredient(1, 'sdm', 'Ketumbar Bubuk'),
      ],
    ),
    Recipe(
      'Tahu Campur',
      'assets/tahu campur.jpg',
      10,
      [
        Ingredient(300, 'gr', 'Tahu'),
        Ingredient(1, 'batang', 'Daun Bawang'),
        Ingredient(2, 'batang', 'Seledri'),
        Ingredient(5, 'buah', 'Cabai Merah'),
      ],
    ),
    Recipe(
      'Tahu Tek',
      'assets/tahu tek.jpg',
      4,
      [
        Ingredient(200, 'gr', 'Tahu'),
        Ingredient(2, 'sdt', 'Garam'),
        Ingredient(4, 'sdt', 'Kaldu Jamur'),
      ],
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}
