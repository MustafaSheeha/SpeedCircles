import 'package:flutter/material.dart';
import 'widgets/next_button_widget.dart';
import 'widgets/skip_widget.dart';
import 'widgets/variety_and_reasonable_price_description_widget.dart';
import 'widgets/variety_and_reasonable_price_widget.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 3),
            Image.asset(
              'assets/images/VarietyAndReasonablePrice.png',
              height: 200,
            ),
            const Spacer(flex: 2),
            const VarietyAndReasonablePriceWidget(),
            const Spacer(),
            const VarietyAndReasonablePriceDescriptionWidget(),
            const Spacer(flex: 3),
            const Row(
              children: [
                SkipWidget(),
                NextButtonWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

