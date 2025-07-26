import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iroid_application/src/config/theme/app_color.dart';

class SearchDropdown extends StatelessWidget {
  final String label;

  const SearchDropdown({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: AppColor.whiteSmoke,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColor.black,
            ),
          ),
          Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade600),
        ],
      ),
    );
  }
}
