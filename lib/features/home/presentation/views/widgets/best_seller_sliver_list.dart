import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_book/constants.dart';
import 'package:go_book/core/widgets/custom_circular_indicator.dart';
import 'package:go_book/core/widgets/custom_error_widget.dart';
import 'package:go_book/features/home/presentation/manger/new_books_cubit/new_books_cubit_cubit.dart';
import 'package:go_book/features/home/presentation/views/widgets/best_seller_item.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewBooksCubit, NewBooksCubitState>(
      builder: (context, state) {
        if (state is NewBooksCubitSuccess) {
          return SliverList.builder(
            itemCount: state.books.length,
            itemBuilder: (context, index) => Padding(
              padding: edgeInsetsHorizontal30,
              child: BestSellerItem(
                bookModel: state.books[index]),
            ),
          );
        } else if (state is NewBooksCubitFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(error: state.error));
        } else if (state is NewBooksCubitLoading) {
          return const SliverToBoxAdapter(child: CustomCircularIndicator());
        } else if (state is NewBooksCubitInitial) {
          return const SliverToBoxAdapter(
              child: CustomCircularIndicator(color: Colors.white));
        } else {
          return const SliverToBoxAdapter(
              child: CustomCircularIndicator(color: Colors.green));
        }
      },
    );
  }
}
