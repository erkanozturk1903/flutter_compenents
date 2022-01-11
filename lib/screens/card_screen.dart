import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Screen'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: 'Bulutlar',
              imageUrl:
                  'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: 'Yol Nereye Biz Oraya',
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/commons/8/86/Landscape_mountain.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              name: 'Huzur',
              imageUrl:
                  'https://www.thespruce.com/thmb/vsI9xUOgilsLC1FQmD3oatrDnuU=/2138x1203/smart/filters:no_upscale()/139808482-56a5863f3df78cf77288b18b.jpg',
            ),
          ],
        ));
  }
}
