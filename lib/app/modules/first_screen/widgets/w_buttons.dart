import 'package:flutter/material.dart';
import '../../../core/widgets/button_widget.dart';
import '../../../core/values/app_colors.dart';

class ButtonsWidget extends StatelessWidget {
  final VoidCallback onCheckPressed;
  final VoidCallback onNextPressed;

  const ButtonsWidget({
    super.key,
    required this.onCheckPressed,
    required this.onNextPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonWidget(
          text: 'CHECK',
          onPressed: onCheckPressed,
          backgroundColor: AppColors.primary,
          textColor: Colors.white,
        ),
        const SizedBox(height: 15),
        ButtonWidget(
          text: 'NEXT',
          onPressed: onNextPressed,
          backgroundColor: AppColors.primary,
          textColor: Colors.white,
        ),
      ],
    );
  }
}
