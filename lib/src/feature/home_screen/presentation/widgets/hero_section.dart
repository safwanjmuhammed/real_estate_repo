import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iroid_application/src/common/atom/basic_text.dart';

class HeroSection extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final String? subtitle;
  final double height;
  final BorderRadius? borderRadius;

  const HeroSection({
    super.key,
    this.imageUrl,
    this.title,
    this.subtitle,
    this.height = 400,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: borderRadius ?? BorderRadius.circular(16),
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background Image
            Image.network(fit: BoxFit.cover, imageUrl ?? ''),
            Container(color: Colors.black.withValues(alpha: 0.3)),

            // Text Content
            Positioned(
              left: 24,
              bottom: 24,
              right: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (title != null)
                    BasicText(
                      text: title!,
                      style: GoogleFonts.gantari(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                  if (title != null && subtitle != null)
                    const SizedBox(height: 16),

                  if (subtitle != null)
                    BasicText(
                      text: subtitle!,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
