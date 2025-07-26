import 'package:flutter/material.dart';
import 'package:iroid_application/src/config/theme/app_color.dart';

import 'package:iroid_application/src/feature/home_screen/presentation/widgets/search_dropdown.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: AppColor.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SearchDropdown(label: 'Category'),
            const SizedBox(height: 16),
            const SearchDropdown(label: 'Property Type'),
            const SizedBox(height: 16),
            const SearchDropdown(label: 'Location'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SEARCH',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
