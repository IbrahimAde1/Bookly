import 'package:flutter/material.dart';

import '../../../../../constans.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/best_seller_rateing.dart';

class ItemBookDetails extends StatelessWidget {
  const ItemBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: AspectRatio(
            aspectRatio: 129 / 193,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(Assests.kBook1)),
              ),
              alignment: Alignment.bottomRight,
            ),
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'Harry Potter and the Goblet of Fire',
          style: Styles.testStyle30,
          textAlign: TextAlign.center,
        ),
        Text('Rudyard Kipling',
            style: Styles.testStyle14
                .copyWith(color: Colors.white.withOpacity(0.70))),
        const BestSellerRating(),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
