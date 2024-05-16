import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_book/constants.dart';
import 'package:go_book/core/widgets/custom_circular_indicator.dart';
import 'package:go_book/core/widgets/custom_error_widget.dart';
import 'package:go_book/features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:go_book/features/home/presentation/views/widgets/featured_item.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
  return SizedBox(
    height: MediaQuery.of(context).size.height * .15,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Padding(
            padding:const EdgeInsets.symmetric(horizontal: 5),
            child: FeaturedItem(
              imageUrl:state.books[index].volumeInfo?.imageLinks?.thumbnail ?? kStandardNetworkImage
                  ,
            ),
          );
        }),
  );
}else if (state is SimilarBooksFailure) {
  return CustomErrorWidget(error: state.error);
}else{
  return const CustomCircularIndicator();
}
      },
    );
  }
}
