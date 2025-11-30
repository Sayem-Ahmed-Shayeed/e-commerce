import 'package:flutter/material.dart';

import '../../../../../utils/constants/text_strings.dart';

class RememberMeAndForgetPass extends StatelessWidget {
  const RememberMeAndForgetPass({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(5),
              ),
              value: true,
              onChanged: (value) {},
            ),
            Text(MyTexts.RememberMe, style: theme.textTheme.bodyMedium),
          ],
        ),

        TextButton(
          onPressed: () {},
          child: Text(
            MyTexts.ForgetPassword,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
