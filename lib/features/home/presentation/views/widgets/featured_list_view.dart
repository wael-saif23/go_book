import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_book/core/widgets/custom_circular_indicator.dart';
import 'package:go_book/core/widgets/custom_error_widget.dart';
import 'package:go_book/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:go_book/features/home/presentation/views/widgets/featured_item.dart';

class FreaturedListView extends StatelessWidget {
  const FreaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
        builder: (context, state) {
      if (state is FeaturedBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.30,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return const FeaturedItem();
            },
          ),
        );
      } else if (state is FeaturedBooksfailure) {
        return CustomErrorWidget(error: state.error);
      } else if (state is FeaturedBooksLoading) {
        return const CustomCircularIndicator(color: Colors.white);
      } else if (state is FeaturedBooksInitial)
      {
        return const CustomCircularIndicator(color: Colors.blue);
      }
      else {
        return const CustomCircularIndicator(color: Colors.green);
      }
    });
  }
}
