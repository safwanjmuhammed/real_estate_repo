import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iroid_application/src/feature/home_screen/presentation/home_screen.dart';
import 'package:iroid_application/src/feature/home_screen/presentation/widgets/nav_item.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu, color: Colors.black87),
          _buildIconTitle(icon: Icons.home_outlined, title: 'Real Estate'),
          _buildIconTitle(icon: Icons.person_outlined, title: 'Login'),
        ],
      ),
    );
  }

  Widget _buildIconTitle({required IconData icon, required String title}) =>
      Row(
        children: [
          Icon(icon),
          const SizedBox(width: 8),
          Text(
            title,
            style: GoogleFonts.gantari(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      );
}
