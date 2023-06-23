import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/data/models/book_model/book_model.dart';

class CustomButtonBookDetails extends StatelessWidget {
  const CustomButtonBookDetails({
    super.key,
    required this.book,
  });
  final BookModel book;
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
          child: Text('Free',
              style: Styles.testStyle18
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        GestureDetector(
          onTap: () async {
            if (book.volumeInfo.previewLink != null) {
              final Uri url = Uri.parse(book.volumeInfo.previewLink!);
              if (await canLaunchUrl(url)) {
                launchUrl(url, mode: LaunchMode.externalApplication);
              }
            } else {}
          },
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: MediaQuery.of(context).size.width * .4,
            decoration: const BoxDecoration(
                color: Color(0xffef8262),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Text(
              'Preview',
              style: Styles.testStyle18
                  .copyWith(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
