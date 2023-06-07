import 'package:flutter/material.dart';

import '../../../../../constans.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_rateing.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              Assests.kBook1,
              height: 100,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  'Harry Potter and the Goblet of Fire',
                  style: Styles.testStyle20.copyWith(fontFamily: kGTSectrafine),
                ),
              ),
              Text('Rudyard Kipling',
                  style: Styles.testStyle14
                      .copyWith(color: Colors.white.withOpacity(0.70))),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '19.99 €',
                    style: Styles.testStyle20
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  const BestSellerRating()
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
