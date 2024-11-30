import 'package:flutter/material.dart';
import 'package:clothes_app/clothes.dart';
import 'clothes_card.dart';

void main() {
  runApp(const MaterialApp(
    home: ClothesList(),
  ));
}

class ClothesList extends StatefulWidget {
  const ClothesList({super.key});

  @override
  State<ClothesList> createState() => _ClothesListState();
}


class _ClothesListState extends State<ClothesList> {


  List<Clothes> clothes = [
    Clothes(name: 'Black Jacket', pictureUrl: 'https://static.zara.net/assets/public/0d07/5b14/a14c40c4a991/a93a2c9173de/08574700800-e1/08574700800-e1.jpg?ts=1726219913713&w=563', description: 'A sleek and versatile black jacket crafted for style and comfort. Made with high-quality, durable material, it features a minimalist design with a snug fit, zip-up closure, and functional pockets. Perfect for casual outings or layering on cooler days', price: 3490.0),
    Clothes(name: 'Black Shirt', pictureUrl: 'https://static.zara.net/assets/public/d386/eef7/a9614b4ba1bd/923d7dad6eb7/05584361800-e1/05584361800-e1.jpg?ts=1724317320753&w=563', description: 'A classic black slim-fit t-shirt designed for everyday wear. Made from soft, breathable cotton for all-day comfort, it features a minimalistic design, short sleeves, and a tailored cut that enhances your silhouette. A wardrobe essential for any occasion.', price: 599.0),
    Clothes(name: 'Navy Sweater', pictureUrl: 'https://static.zara.net/assets/public/b25c/33cb/68524ab5bc21/269af47978cd/09598366401-e1/09598366401-e1.jpg?ts=1729850331264&w=563', description: 'A cozy navy sweater made from premium knit fabric, offering warmth and style. Designed with a classic fit, ribbed cuffs, and a crew neckline, it’s perfect for layering or wearing on its own for a polished yet comfortable look.', price: 1990.0),
    Clothes(name: 'Gray Jeans', pictureUrl: 'https://static.zara.net/assets/public/c48b/ecf4/de2e4cd3b25d/89774f2feca1/08062310822-e1/08062310822-e1.jpg?ts=1724335844068&w=563', description: 'Stylish gray jeans crafted from high-quality denim, offering a perfect balance of comfort and durability. Featuring a slim-fit design, classic five-pocket styling, and a versatile neutral tone, they’re ideal for casual or semi-formal outfits.', price: 1990.0),
    Clothes(name: 'Turqoise Hoodie', pictureUrl: 'https://static.zara.net/assets/public/153a/1c10/89f345dc97c6/a791ebc9afb3/00761330400-e1/00761330400-e1.jpg?ts=1732201012672&w=563', description: 'A vibrant turquoise hoodie made from soft, breathable fabric for maximum comfort. Designed with a relaxed fit, adjustable drawstring hood, and a spacious front pocket, it’s perfect for casual wear or layering on cooler days.', price: 1790.0),
    Clothes(name: 'Brown Boots', pictureUrl: 'https://static.zara.net/assets/public/f560/ed55/1f2b40f58908/99e4c37c4486/12018420114-e2/12018420114-e2.jpg?ts=1723024684901&w=563', description: 'Rugged and stylish brown boots made from durable leather, offering both comfort and durability. Featuring a sturdy sole, lace-up design, and a classic finish, they’re perfect for outdoor adventures or adding a touch of sophistication to any casual outfit.', price: 3490.0),
    Clothes(name: 'Brown Shoes', pictureUrl: 'https://static.zara.net/assets/public/63a0/b824/57fc4bf89b4b/1f625565aea3/12415420700-e1/12415420700-e1.jpg?ts=1730624602204&w=563', description: 'Elegant brown formal shoes crafted from premium leather, featuring a sleek design with a polished finish. Designed with a comfortable insole and durable sole, they’re perfect for business meetings, formal events, or elevating your professional look.', price: 2990.0)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('213152'),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: clothes.length,
        itemBuilder: (context, index) {
          return ItemCard(item: clothes[index]);
        },
      ),
    );
  }
}
