import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/app_bar.dart';
import 'package:belanja/widgets/footer.dart';
import 'package:belanja/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      id: 1,
      name: 'Sugar',
      price: 5000,
      quantity: 50,
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUcMN49ydPk6v4BzJNtLVFC9DD6_YmEXud2g&s',
      description: 'Ini gula manis',
    ),
    Item(
      id: 2,
      name: 'Salt',
      price: 2000,
      quantity: 10,
      image:
          'https://cdn1-production-images-kly.akamaized.net/ac3jELqw9vk6gRcsrK-VokTLpoE=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4214710/original/019361800_1667548137-sea_salt.jpg',
      description: 'Ini garam asin',
    ),
    Item(
      id: 3,
      name: 'Rice',
      price: 10000,
      quantity: 100,
      image:
          'https://awsimages.detik.net.id/community/media/visual/2023/10/10/ilustrasi-beras-1_169.jpeg?w=1200',
      description: 'Ini beras putih',
    ),
    Item(
      id: 4,
      name: 'Flour',
      price: 8000,
      quantity: 30,
      image:
          'https://cdn1-production-images-kly.akamaized.net/HJV1GQWIoFnVm_Wdgkl7RYbExjs=/91x0:758x667/1200x1200/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4048511/original/024182700_1654835595-shutterstock_679619884.jpg',
      description: 'Ini tepung terigu',
    ),
    Item(
      id: 5,
      name: 'Coffee',
      price: 15000,
      quantity: 20,
      image:
          'https://img-global.cpcdn.com/recipes/31c25e928d8436ca/680x482cq70/kopi-hitam-bubuk-homemade-foto-resep-utama.jpg',
      description: 'Ini kopi hitam',
    ),
    Item(
      id: 6,
      name: 'Tea',
      price: 12000,
      quantity: 25,
      image:
          'https://res.cloudinary.com/dk0z4ums3/image/upload/v1617593508/attached_image/memetik-manfaat-teh-hijau-untuk-kesehatan.jpg',
      description: 'Ini teh hijau',
    ),
    Item(
      id: 7,
      name: 'Milk',
      price: 9000,
      quantity: 15,
      image:
          'https://img-cdn.medkomtek.com/4LmtwXvnq89CZfQgaqBnzFAq1ig=/0x0/smart/filters:quality(100):format(webp)/article/OtJlMmM6oKfBCMA3BLuev/original/088090200_1511410761-Susu-Soya-dan-Susu-Sapi-Samakah-Kualitasnya.jpg',
      description: 'Ini susu sapi',
    ),
    Item(
      id: 8,
      name: 'Butter',
      price: 7000,
      quantity: 20,
      image:
          'https://res.cloudinary.com/dk0z4ums3/image/upload/v1643714477/attached_image/waspadai-bahaya-mentega-karena-mengandung-lemak-jenuh.jpg',
      description: 'Ini mentega',
    ),
    Item(
      id: 9,
      name: 'Cheese',
      price: 25000,
      quantity: 10,
      image:
          'https://res.cloudinary.com/dk0z4ums3/image/upload/v1621838354/attached_image/manfaat-keju-yang-sayang-untuk-dilewatkan.jpg',
      description: 'Ini keju cheddar',
    ),
    Item(
      id: 10,
      name: 'Eggs',
      price: 2000,
      quantity: 50,
      image:
          'https://www.alodokter.com/wp-content/uploads/2015/08/inilah-manfaat-telur-dan-cara-menyimpannya-alodokter.jpg',
      description: 'Ini telur ayam',
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: ItemGrid(items: items),
      bottomNavigationBar: const Footer(),
    );
  }
}

class ItemGrid extends StatelessWidget {
  final List<Item> items;

  const ItemGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.white,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 0.75, // Adjust this value as needed
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ItemCard(item: items[index]);
        },
      ),
    );
  }
}
