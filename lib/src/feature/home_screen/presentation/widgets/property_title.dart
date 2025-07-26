import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iroid_application/src/common/atom/basic_text.dart';
import 'package:iroid_application/src/config/theme/app_color.dart';

class PropertyTitle extends StatelessWidget {
  final String title;
  final String subtitle;

  const PropertyTitle({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        BasicText(
          textHeightBehavior: TextHeightBehavior(
            applyHeightToFirstAscent: true,
            applyHeightToLastDescent: true,
          ),

          text: title,
          style: GoogleFonts.gantari(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColor.blackRock,
          ),
        ),
        SizedBox(height: 8),

        BasicText(
          text: subtitle,
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColor.blackRock,
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
