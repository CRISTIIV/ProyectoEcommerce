import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "const Icon(Icons.woman, color: Colors.white,", "text": "Mujeres"},
      {"icon": "const Icon(Icons.man, color: Colors.white,", "text": "Hombres"},
      {"icon": "const Icon(Icons.snowshoeing, color: Colors.white,", "text": "Calzado"},
      {"icon": "const Icon(Icons.home, color: Colors.white,", "text": "Hogar"},
      {"icon": "const Icon(Icons.electrical_services, color: Colors.white,", "text": "Electrónica"},
      {"icon": "const Icon(Icons.sports_basketball, color: Colors.white,", "text": "Deportes"},
      {"icon": "const Icon(Icons.pregnant_woman, color: Colors.white,", "text": "Bebés"},
      {"icon": "const Icon(Icons.face, color: Colors.white,", "text": "Belleza"},
      {"icon": "const Icon(Icons.piano, color: Colors.white,", "text": "Instrumentos Musicales"},
      {"icon": "const Icon(Icons.movie, color: Colors.white,", "text": "Peliculas"},
      {"icon": "const Icon(Icons.gamepad, color: Colors.white,", "text": "Video Juegos"},
      {"icon": "const Icon(Icons.camera, color: Colors.white,", "text": "camaras"},
      {"icon": "const Icon(Icons.book, color: Colors.white,", "text": "Libros"},
      {"icon": "const Icon(Icons.pets, color: Colors.white,", "text": "Mascotas"},
      {"icon": "const Icon(Icons.local_offer, color: Colors.white,", "text": "Ofertas"}
    ];
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * (20/375)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: (MediaQuery.of(context).size.width * (55/375)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * (15/375)),
              height: (MediaQuery.of(context).size.width * (55/375)),
              width: (MediaQuery.of(context).size.width * (55/375)),
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(height: 5),
            Text(text!, textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
