import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iroid_application/src/constants/app_assets.dart';
import 'package:iroid_application/src/feature/home_screen/presentation/provider/home_provider.dart';
import 'package:iroid_application/src/feature/home_screen/presentation/widgets/custom_app_bar.dart';
import 'package:iroid_application/src/feature/home_screen/presentation/widgets/hero_section.dart';
import 'package:iroid_application/src/feature/home_screen/presentation/widgets/mobile_search_form.dart';
import 'package:iroid_application/src/feature/home_screen/presentation/widgets/property_card.dart';
import 'package:iroid_application/src/feature/home_screen/presentation/widgets/property_title.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const CustomAppBar(),
                  HeroSection(
                    imageUrl: AppAssets.heroBg,
                    title: 'Find a home that suits your lifestyle.',
                    subtitle:
                        'Explore our featured properties and discover your dream home.',
                  ),
                  SizedBox(height: 10),
                  SearchForm(),
                  const SizedBox(height: 40),
                  const PropertyTitle(
                    title: 'Discover your featured properties',
                    subtitle:
                        'Explore our handpicked selection of premium homes and investments.',
                  ),
                  const SizedBox(height: 16),
                ]),
              ),
            ),
            SliverToBoxAdapter(
              child: Consumer(
                builder: (context, WidgetRef ref, child) {
                  final state = ref.watch(homeNotifierProvider);
                  return state.when(
                    loading: () => Center(child: CircularProgressIndicator()),
                    data: (data) {
                      return SizedBox(
                        height: 500,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          itemCount: data.realEstateState?.data.length ?? 0,
                          separatorBuilder:
                              (context, index) => const SizedBox(width: 16),
                          itemBuilder: (context, index) {
                            final project = data.realEstateState?.data[index];
                            if (project == null) return SizedBox.shrink();

                            return PropertyCard(project: project);
                          },
                        ),
                      );
                    },
                    error:
                        (error, stackTrace) =>
                            Center(child: Text(error.toString())),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 50)),
          ],
        ),
      ),
    );
  }
}
