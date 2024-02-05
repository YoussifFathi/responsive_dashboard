import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/card_model.dart';
import 'package:responsive_dashboard/views/dashboard/widgets/card_and_income_section/my_card_section/custom_card_widget.dart';

class CustomCardPageBuilder extends StatefulWidget {
  const CustomCardPageBuilder({super.key});

  @override
  State<CustomCardPageBuilder> createState() => _CustomCardPageBuilderState();
}

class _CustomCardPageBuilderState extends State<CustomCardPageBuilder> {
  static const List<CardModel> items = [
    CardModel(
        name: 'Syah Bandi',
        number: '0918 8124 0042 8129',
        dateAndCvv: '12/20 - 124'),
    CardModel(
        name: 'Yousef Fathy',
        number: '0918 124 0042 8129',
        dateAndCvv: '10/20 - 124'),
    CardModel(
        name: 'Ali Mohamed',
        number: '0918 8124 0042 1234',
        dateAndCvv: '1/20 - 124'),
    CardModel(
        name: 'Abdo Adel',
        number: '0918 2314 0042 523',
        dateAndCvv: '5/20 - 124'),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
            },
          ),
          child: AspectRatio(
            aspectRatio: 1.9534,
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomCardWidget(
                    cardModel: items[index],
                  ),
                );
              },
              itemCount: items.length,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children:
                List.generate(items.length, (index) => dotBuilder(index: index)),
          ),
        )
      ],
    );
  }

  Widget dotBuilder({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 10),
      width: index == currentIndex ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: index == currentIndex ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
      ),
    );
  }
}

/*
    return Expanded(
      child: PageView.builder(
        itemBuilder: (context, index) {
          return CustomCardWidget(
            cardModel: cardModel,
          );
        },
        itemCount: 3,
      ),
    );
 */
