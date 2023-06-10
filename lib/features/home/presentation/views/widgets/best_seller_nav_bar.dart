import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';
import '../../../../../constans.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.book,
              color: Color(kBtnNavBar),
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.bookmarks,
              color: Color(kBtnNavBar),
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.library_music_rounded,
              color: Color(kBtnNavBar),
            )),
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(
              radius: 18,
              child: Image.asset(
                Assests.kProfile,
                fit: BoxFit.cover,
              )),
          // icon: ImageIcon(AssetImage(Assests.kProfile)),
          color: Color(kBtnNavBar),
        ),
      ]),
    ).asGlass(
      clipBorderRadius: BorderRadius.circular(20),
      blurX: 15,
      blurY: 15,
    );
  }
}
