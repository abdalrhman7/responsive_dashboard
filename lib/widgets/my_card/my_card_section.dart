import 'package:flutter/material.dart';
import 'package:responsive/utils/app_style.dart';
import 'package:responsive/widgets/my_card/dots_indicator.dart';
import 'package:responsive/widgets/my_card/my_card.dart';

import 'card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPage = 0;

  @override
  initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          'My card',
          style: AppStyle.styleSemiBold20(context),
        ),
        const SizedBox(height: 20),
        MyCardPageView(pageController: pageController),
        const SizedBox(height: 20),
        DotsIndicator(currentPageIndex: currentPage),
      ],
    );
  }
}
