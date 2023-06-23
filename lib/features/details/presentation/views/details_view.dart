import 'package:bookly_app/features/details/presentation/views/manger/details_cubit/book_details_cubit.dart';
import 'package:bookly_app/features/details/presentation/views/widgets/detalis_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/data/models/book_model/book_model.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  void initState() {
    BlocProvider.of<BookDetailsCubit>(context).fetchDatailsBooks(
        category: widget.bookModel.volumeInfo.categories?[0] ?? 'none');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DetailsViewBody(
      book: widget.bookModel,
    ));
  }
}
