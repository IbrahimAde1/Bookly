import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomButtonBookDetails extends StatelessWidget {
  const CustomButtonBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.of(context).size.width * .4,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Text('19.99 €',
              style: Styles.testStyle18
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        Container(
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.of(context).size.width * .4,
          decoration: const BoxDecoration(
              color: Color(0xffef8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Text(
            'Free Preview',
            style:
                Styles.testStyle18.copyWith(color: Colors.white, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
