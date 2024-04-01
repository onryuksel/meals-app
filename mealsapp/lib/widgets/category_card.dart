import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.category, required this.onCategoryClick});
  final Category category;
  final void Function() onCategoryClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //InkWell sınıfı, Flutter'da kullanıcı etkileşimlerini yakalamak ve bu etkileşimlere yanıt vermek için kullanılan bir widget'tır.
      //onTab: onCategoryClick, -> Sadece dışarıyı haberdar et.
      onTap: () {
        onCategoryClick(); //-> Dışarıyı haberdar et, varsa diğer işlemleri yürüt.
      },
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.7),
              category.color.withOpacity(0.3)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.all(16.0),
        child: Text(category.name),
      ),
    );
  }
}
